# app/batchProcessingServices/MoviesImportService.rb
class MovieImporterService
  def self.import_from_json(file_path)
    json_data = File.read(file_path)
    movies = JSON.parse(file_path)
    
    movies.each do |movie_data|
      Movie.create(title: movie_data['title'], director: movie_data['director'], average_score: movie_data['average_score'])
    end
  end
end
  