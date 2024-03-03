class UserMoviesController < ApplicationController
  before_action :authenticate_user!

  def new
    @user_movie = User_movie.new
  end
  
  def create
    @movie = Movie.find(params[:user_movie][:movie_id])
    current_user.movies << @movie
    @user_movie = current_user.user_movies.find_by(movie_id: @movie.id)
    @user_movie.update(score: params[:user_movie][:score])
    redirect_to movies_path
  end

  def update
    @user_movie = current_user.user_movies.find_by(movie_id: params[:user_movie][:movie_id])
    @user_movie.update(score: params[:user_movie][:score])
    redirect_to movies_path
  end


  def index
    @usermovies = UserMovie.all
  end

  def upload
    json_file = params[:json_file]    
    if json_file.present? && json_file.respond_to?(:read)
      json_content = json_file.read
      
      begin
        user_movies_data = JSON.parse(json_content)

        user_movies_data.each do |user_movie_data|
          if user_movie_data['title'].present? && user_movie_data['average_score'].present?

            # O que já estão criados são MOVIES e USER
            # Falta saber como estao as suas ligação de id e
            # IDS sao gerados automaticamente entao talvez comparar por nome do filme

            title_user_movie = user_movie_data['title']

            movie = Movie.where(title: title_user_movie).first
            user_id_manual_4test = 1

            if movie.present?
              
              @user_movie = UserMovie.new(user_id: user_id_manual_4test, movie_id: movie['id'], score: user_movie_data['average_score'])
              @user_movie.save
            end

          else
            redirect_to movies_path, alert: 'One or more required fields are missing for a movie.'
            return
          end
        end
        redirect_to movies_path, notice: 'User movies score importing was a success!'
      rescue JSON::ParserError => e
        redirect_to movies_path, alert: 'Processing JSON file gone wrong. Make sure that file is in a correct format.'
      end
    else
      redirect_to user_movies_path, alert: 'Any file was uploaded.'
    end
  end

  def user_movie_params
    params.require(:user_movie).permit(:user_id, :movie_id, :score)
  end


end
