
class GameView

  def initialize
    welcome
  end

  def welcome
    puts <<-STRING
        Welcome to Ruby Flash Cards!  To play, enter the correct term for each definition.
                              (Type 'quit' to quit.)
    STRING
    sleep(3)
  end

  def user_go
    gets.chomp
  end

  def display_definition(definition)
    puts <<-STRING
                          Definition:

    STRING
    puts "#{definition.capitalize}"
    gets.chomp
  end

  def clear_screen!
    sleep(5)
    print "\e[2J"
    print "\e[H"
  end

  def move_to_home!
    print "\e[H"
  end

  def correct(user_answer, card_count)
    puts <<-STRING
                  #{user_answer.capitalize} was correct!


                        #{card_count} answered correctly.
    STRING
  end

  def incorrect(user_answer,correct_answer)
    puts <<-STRING
                    #{user_answer.capitalize} is incorrect.

                          The correct answer is: #{correct_answer.capitalize}

    STRING
  end

  def force_end_game(num_of_cards)
      puts <<-STRING
                  You have completed #{num_of_cards}. See you next time!
        STRING
  end

  def end_game
    puts "Gratz! You won the game!"
  end


end

