class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :correct_guesses


  # def self.correct?(user_answer)
  #   return true if user_answer == self.answer
  # end

  # def self.rotaion_count
  #   @round += 1
  #   @round
  # end

end
