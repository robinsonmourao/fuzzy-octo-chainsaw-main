require 'rails_helper'

RSpec.describe 'UserMovies routing', type: :routing do

    it 'routes GET /user_movies to the user_movies#index' do
        expect(get: '/user_movies').to route_to('user_movies#index')
    end

    it 'routes POST /user_movies to the user_movies#create' do
        expect(post: '/user_movies').to route_to('user_movies#create')
    end

    it 'routes PATCH /user_movies to the user_movies#update' do
        expect(patch: '/user_movies/1').to route_to('user_movies#update', id: '1')
    end

    it 'routes PUT /user_movies to the user_movies#update' do
        expect(put: '/user_movies/1').to route_to('user_movies#update', id: '1')
    end

    it 'routes POST /user_movies to the user_movies#upload' do
        expect(post: '/user_movies/import').to route_to('user_movies#upload')
    end

    it 'routes GET /user_movies to the user_movies#show' do
        expect(get: '/user_movies/import').to route_to('user_movies#show')
    end
end