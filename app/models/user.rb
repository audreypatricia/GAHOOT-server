class User < ApplicationRecord
  has_many :guesses
  has_and_belongs_to_many :games
  has_many :quizzes
end
