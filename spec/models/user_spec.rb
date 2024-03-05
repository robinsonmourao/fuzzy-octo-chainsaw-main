require 'rails_helper'

RSpec.describe User, type: :model do 

    let(:expectedUser) { User.create(email: 'admin@rotten', password: 'admin') }
    
    describe 'validations' do

        it 'must be valid trying valid attributes' do
            actualUser = User.new(email: expectedUser.email, password: expectedUser.password)
            expect(actualUser).to be_valid
        end

        it 'must be invalid trying without user email' do
            actualUser = User.new(password: expectedUser.password)
            expect(actualUser).to_not be_valid
        end

        it 'must be invalid trying without user password' do
            actualUser = User.new(email: expectedUser.email)
            expect(actualUser).to_not be_valid
        end
    end
end