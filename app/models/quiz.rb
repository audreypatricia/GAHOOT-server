class Quiz < ApplicationRecord
  has_many :games
  belongs_to :user, :optional => true
  has_many :questions

end
