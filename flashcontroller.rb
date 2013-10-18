# Main file for 
require_relative 'viewer'
require_relative 'model'
class FlashController

  def initialize
    @viewer = GameView.new
    @data = Model.new
    begin_game
  end

  def game_finished?
    @data.array_length
    begin_round
  end

  def begin_round
    card = @data.random_card
    userinput = @viewer.display_definition(card.definition)
    if userinput = card.answer
      @viewer.correct(userinput)
      game_finished?
    else
      @viewer.incorrect(userinput)
      game_finished?
    end
  end
  
  

end
