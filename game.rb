require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"

#GAME START

# Your game logic here.

deck_1 = Deck.new

puts "there are #{deck_1.cards.length} cards in this deck"

player_one = Hand.new(deck_1.deal)
player_two = Hand.new(deck_1.deal)

puts "player one was dealt #{player_one.pretty_hand}"
puts "player two was dealt #{player_two.pretty_hand}"

# players = [player_one, player_two]

# winner = players.max { |a, b| a.card_value <=> b.card_value }

puts "player one's hand value: #{player_one.card_value}"
puts "player two's hand value: #{player_two.card_value}"

if player_one.card_value > player_two.card_value
  puts "player one wins"
elsif player_one.card_value < player_two.card_value
  puts "player two wins"
else 
  puts "it's a tie"
end

