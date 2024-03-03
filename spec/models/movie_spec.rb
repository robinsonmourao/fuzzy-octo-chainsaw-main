require 'rails_helper'

RSpec.describe Movie, type: :model do
    describe 'validations' do

        it 'must be valid trying valid attributes' do
            movie = Movie.new(title: 'Titanic', director: 'James Cameron')

            expect(movie).to be_valid
            expect(movie.title).to eq('Titanic')
            expect(movie.director).to eq('James Cameron')
        end

        it 'must be invalid trying without title' do
            movie = Movie.new(director: 'James Cameron')
            expect(movie).to be_valid
        end

        it 'must be invalid without director' do
            movie = Movie.new(title: 'Titanic')
            expect(movie).to be_valid
        end
    end
end
