class UserMovie < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  attribute :score, :float
end
