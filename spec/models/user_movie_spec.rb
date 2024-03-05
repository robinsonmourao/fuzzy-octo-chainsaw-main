require 'rails_helper'

RSpec.describe UserMovie, type: :model do

    let(:user) { User.create(email: 'admin@rotten', password: 'admin') }
    let(:movie) { Movie.create(title: 'Titanic', director: 'James Cameron') }

    expected_score = 7.9
    actual_score = 7.9

    describe 'validations' do

        it 'must be valid trying valid attributes' do
            actual_User_movie = UserMovie.new(user_id: user.id,  movie_id: movie.id, score: expected_score)
            expect(actual_User_movie).to be_valid
            expect(actual_User_movie.score).to eq(actual_score)
        end

        it 'must be invalid trying without an user id' do
            actual_User_movie = UserMovie.new(movie_id: movie.id, score: expected_score)
            expect(actual_User_movie).to_not be_valid
        end

        it 'must be invalid trying without a movie id' do
            actual_User_movie = UserMovie.new(user_id: user.id, score: expected_score)
            expect(actual_User_movie).to_not be_valid
        end

        it 'must be invalid trying without score' do
            actual_User_movie = UserMovie.new()
            expect(actual_User_movie).to_not be_valid
        end
    end
end