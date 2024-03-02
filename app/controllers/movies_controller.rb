class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.all
    respond_to do |format|
      format.html
      format.json { render json: @movies.to_json(methods: :average_score) }
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "Movie was successfully created."
    else
      render :new
    end
  end

  
  def upload
    json_file = params[:json_file]    
    if json_file.present? && json_file.respond_to?(:read)
      json_content = json_file.read
      
      begin
        movies_data = JSON.parse(json_content)

        movies_data.each do |movie_data|
          if movie_data['title'].present? && movie_data['director'].present?
            Movie.create(title: movie_data['title'], director: movie_data['director'])
          else
            redirect_to movies_path, alert: 'One or more required fields are missing for a movie.'
            return
          end
        end
        redirect_to movies_path, notice: 'Movies importing was a success!.'
      rescue JSON::ParserError => e
        redirect_to movies_path, alert: 'Processing JSON file gone wrong. Make sure that file is in a correct format.'
      end
    else
      redirect_to root_path, alert: 'Any file was uploaded.'
    end
  end
  


  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
