require 'rails_helper'

RSpec.describe 'Sessions routing', type: :routing do

    it 'routes POST /sessions to the sessions#create action' do 
        expect(post: '/sessions').to route_to('sessions#create')
    end

    it 'routes DELETE /sessions/:id to the sessions#destroy action' do 
        expect(delete: '/sessions/1').to route_to('sessions#destroy', id: '1')
    end
    
    it 'routes GET /login to the sessions#new action' do 
        expect(get: '/login').to route_to('sessions#new')
    end

    it 'routes DELETE /logout to the sessions#destroy action' do 
        expect(delete: '/logout/').to route_to('sessions#destroy')
    end

    it 'routes GET / to ROOT' do 
        expect(get: '/sessions/new').to route_to('sessions#new')
    end
end