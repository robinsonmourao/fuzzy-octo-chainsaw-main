require 'rails_helper'

RSpec.describe Movie, type: :model do
    describe 'validations' do

        it 'must be valid trying valid attributes' do
            actualMovie = Movie.new(title: 'Titanic', director: 'James Cameron')

            expect(actualMovie).to be_valid
            expect(actualMovie.title).to eq('Titanic')
            expect(actualMovie.director).to eq('James Cameron')
        end

        it 'must be invalid trying without title' do
            actualMovie = Movie.new(director: 'James Cameron')
            expect(actualMovie).to be_valid
        end

        it 'must be invalid without director' do
            actualMovie = Movie.new(title: 'Titanic')
            expect(actualMovie).to be_valid
        end
    end
end
