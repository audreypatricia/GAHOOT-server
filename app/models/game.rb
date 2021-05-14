class Game < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :guesses
  belongs_to :quiz, :optional => true


end
