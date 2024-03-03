require 'rails_helper'

let(:user) { User.create(email: 'admin@rotten', password: 'admin') }

RSpec.describe User, type: :model do 
    describe 'validations' do

        it 'must be valid trying valid attributes' do
            user = User.new(email: user.email, password: user.password)
            expect(user_movie).to be_valid
        end

        it 'must be invalid trying without user email' do
            user = User.new(password: user.password)
            expect(user_movie).to_not be_valid
        end

        it 'must be invalid trying without user password' do
            user = User.new(email: user.email)
            expect(user_movie).to_not be_valid
        end
    end
end