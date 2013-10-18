
class GameView

  # Display flash card
  def initialize
    welcome
  end

  def welcome
    puts 'Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Type "go" to start.'
  end

  def user_go
    gets.chomp
  end

  def display_definition(definition)
    puts "Definition:"
    puts "#{definition}"
    gets.chomp
  end

  def correct
    puts "#{user_answer}That was correct!"
  end

  def incorrect(user_answer)
    puts "#{user_answer}That was incorrect."
  end

  def force_end_game
      puts "So far, you have completed #{x amount of cards}. See you next time!"

  end

  def end_game

  end 



  # display new cards
  # display answered cards
  # User Answer
  #   -get answer
  # Game_Answer
  #   -display Correct/Incorrect
  #   -Display Answer

end

test = GameView.new
test.display_definition("recite pi")
