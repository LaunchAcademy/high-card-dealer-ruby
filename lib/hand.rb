# your code here
class Hand
  def initialize(cards_array)
    @cards_array = cards_array
  end

  def card_value
    total = 0
    @cards_array.each do |card|
       total += card.value
    end
    return total
  end

  #create a method that loops through the card array
  #returns a string of rank and suit values

  def pretty_hand
    hand_string = []
    @cards_array.each do |card|
      hand_string << "#{card.rank} #{card.suit}"
    end
    return hand_string.join(", ")
  end
end