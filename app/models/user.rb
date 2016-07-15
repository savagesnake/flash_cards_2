class User < ActiveRecord::Base
  has_many :rounds
  has_many :correct_guesses

  has_secure_password
end
