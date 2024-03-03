require 'rails_helper'

RSpec.describe 'User routing', type: :routing do

    it 'routes GET / to the user#new action' do 
        expect(get: '/users/new').to route_to('users#new')
    end

    it 'routes POST / to the user#create action' do 
        expect(post: '/users').to route_to('users#create')
    end
end