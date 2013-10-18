class Card

  attr_reader :question, :answer

  def initialize(pair)
    @question = pair[0].chomp
    @answer = pair[1].chomp
  end

end

class Deck

  attr_reader :card_pack


  def initialize
    @card_pack = []
    @current_card = nil
    @cards_complete = 0
  end

  def parse
    file = File.open('flashcard_samples.txt', 'r')
    file.each_slice(2).each do |pair|
      @card_pack << Card.new(pair)
    end
    @card_pack
  end

  def remove_card_from_deck
    @card_pack.delete(@current_card)
    @cards_complete += 1
  end

  def send_card_to_back
    card = @card_pack.shift
    @card_pack << card
  end

  def ask
    @current_card.question
  end

  def return_answer
    @current_card.answer
  end

  def correct_answer?(user_input)
    user_input == @current_card.answer
  end

  def ordered_pull
    @current_card = @card_pack.first
  end

  def random_pull
    @current_card = @card_pack.sample
  end

end


# deck = Deck.new
# deck.parse
# deck.random_pull
# p deck.ask
# p deck.correct_answer?("boo")
# p deck.remove_card_from_deck
# p deck.card_pack
