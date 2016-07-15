class Round < ActiveRecord::Base
  has_many :correct_guesses
  belongs_to :deck
  belongs_to :user
end
