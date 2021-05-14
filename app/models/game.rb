class Game < ApplicationRecord
  has_many :users
  has_many :guesses
  belongs_to :quiz, :optional => true


end
