# Main file for
require_relative 'viewer'
require_relative 'flashcard_model'

class FlashController

  def initialize
    @viewer = GameView.new
    @data = Deck.new
    game_finished?
  end

  def game_finished?
    @viewer.clear_screen!
    return @viewer.end_game if @data.card_pack.empty?
    begin_round
  end

  def begin_round
    card = @data.random_pull
    user_input = @viewer.display_definition(card.question)
    if user_input == "quit"
      @viewer.force_end_game(@data.cards_complete)
    elsif user_input == card.answer
      @viewer.correct(user_input, @data.cards_complete)
      @data.remove_card_from_deck
      game_finished?
    else
      @viewer.incorrect(user_input,@data.return_answer)
      game_finished?
    end
  end



end

new_game = FlashController.new
