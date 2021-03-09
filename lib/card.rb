class Card
  # Your code here
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    value = 0
    if @rank == 'J'
      value = 11
    elsif @rank == 'Q'
      value = 12
    elsif @rank == 'K'
      value = 13
    elsif @rank == 'A'
      value = 14
    else
      value = @rank
    end
    return value
  end

  # Methods you may need:
  # - initialize
  # - method that assigns a card its "value"
  # - attribute readers
  # - any other methods you deem necessary
end
