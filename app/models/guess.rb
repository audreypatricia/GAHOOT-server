class Guess < ApplicationRecord
  belongs_to :game, :optional => true
  belongs_to :user, :optional => true
  belongs_to :question, :optonal => true
end
