require 'json'

class MovieImporter
  def initialize(file_path)
    @file_path = file_path
  end

  def import
    movies_data = JSON.parse(File.read(@file_path))
    
    movies_data.each do |movie_data|
      title = movie_data['title']
      director = movie_data['director']

      Movie.create!(title: title, director: director)
    end
  end
end

file_path = '/home/robinson/Desktop/fuzzy-octo-chainsaw-main/lib/data/Movies.json'
importer = MovieImporter.new(file_path)
importer.import
