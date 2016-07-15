class CreateCorrectGuesses < ActiveRecord::Migration
  def change
      create_table :correct_guesses do |t|
      # t.integer :user_guess, default: 0
      t.integer :rotation
      t.references :card, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.references :round, foreign_key: true, index: true

      t.timestamps
    end
  end
end
