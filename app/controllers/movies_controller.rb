class MoviesController < ApplicationController
  before_action :authenticate_user!

  def import
    file_path = Rails.root.join('path', 'to', '/home/robinson/Desktop/Movies.json')
    ImportDataWorker.perform_async(file_path)
    redirect_to movies_path, notice: "Data import has been initiated."
  end

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

  
  def show
    @movie = Movie.find(params[:id])
  end
  

  private

  def movie_params
    params.require(:movie).permit(:title, :director)
  end
end
