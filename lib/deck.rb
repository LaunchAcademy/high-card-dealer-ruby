require_relative "card"

class Deck
  attr_reader :cards
  
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']


  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle
  end

  def deal
    @cards.pop(4)

    # card_hand_array = []
    
    # while card_hand_array < 4
    #   card_hand_array << @cards.pop()
    # end
    # return card_hand_array
  end
end
