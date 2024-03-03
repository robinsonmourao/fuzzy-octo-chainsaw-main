require 'rails_helper'

RSpec.describe 'Movies routing', type: :routing do

    it 'routes GET /movies to the movies#index action' do
        expect(get: '/movies').to route_to('movies#index')
    end

    it 'routes GET /movies to the movies#new action' do
        expect(get: '/movies/new').to route_to('movies#new')
    end

    it 'routes POST /movies to the movies#create action' do
        expect(post: '/movies').to route_to('movies#create')
    end

    it 'routes POST /movies to the movies#upload action' do
        expect(post: '/movies/import').to route_to('movies#upload')
    end

    it 'routes GET /movies to the movies#create action' do
        expect(get: '/movies/import').to route_to('movies#show')
    end
end