# app/jobs/MoviesImportByBatchProcessing.rb

class MoviesImportByBatchProcessing
  include Sidekiq::Worker

  def perform(file_path)
    json_data = JSON.parse(File.read(file_path))

    json_data.each do |item|
      Movie.create(title: item['title'], director: item['director'])
    end

    puts "Data imported successfully!"
  end
end
