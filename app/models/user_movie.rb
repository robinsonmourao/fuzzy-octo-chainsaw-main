class UserMovie < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  attribute :score, :float

  def average_score
    user_movies.average(:score).to_f
  end  
end
