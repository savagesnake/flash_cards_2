get '/' do
 @deck = Deck.all
  erb :"index"
end

get '/deck/:id' do
  @cards = Deck.find_by(id: params[:id]).cards -= CorrectGuess.all.map(&:card)
  @current_card = @cards.sample
  erb :"game"
end

post '/answer/:id' do
  @card = Card.find_by(id: params[:id])
  erb :"game"
  # if correct?(params[:answer])
  #     #save to datat base
  #   @card.correct_guesses.rotation = @card.rotation_count
  #   redirect :'/deck/:id'
  # else #wrong

  #   #next card

  #   redirect :'/deck/:id'
  #   #correct_guesses.rotation += 1
  # end
  #store  correct answer to db
  #redirect to deck cards
end
