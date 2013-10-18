
class GameView

  def initialize
    welcome
  end

  def welcome
    puts 'Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Type "go" to start.'
    puts
    sleep(1)
  end

  def user_go
    gets.chomp
  end

  def display_definition(definition)
    puts "Definition:"
    puts "#{definition}"
    gets.chomp
  end

  def clear_screen!
    sleep(1)
    print "\e[2J"
    print "\e[H"
  end

  def correct(user_answer, card_count)
    puts "#{user_answer} was correct! #{card_count} answered correctly."
    puts
  end

  def incorrect(user_answer)
    puts "#{user_answer} was incorrect."
    puts
  end

  def force_end_game(num_of_cards)
      puts "So far, you have completed #{num_of_cards}. See you next time!"
  end

  def end_game
    puts "Gratz! You won the game!"

  end


end


