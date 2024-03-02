class ImportMovies
  include Sidekiq::Worker
  
  def upload(file_path)
    data = JSON.parse(File.read(file_path))
    
    data.each do |movie|
      Movie.create(nome: movie['nome'], diretor: movie['diretor'])
    end
  end
end  