class Card
  RANKS = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
  # ^ RANKS is a constant that comprises our deck
  # made up of symbols for face cards, numbers for number cards

  SUITS = [:clubs, :diamonds, :hearts, :spades]
  # ^ suits is a constant that sets the four different suits of cards, all symbols
  # Why do we set these as symbols and not simple strings?

  attr_reader :rank, :suit
  # ^ Here, we declare attr_reader because we do not want people writing to and
  # changing rank and suit values

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    # ^ here, we set two instance variables that our Deck Class can employ
  end

  def greater_than?(other)
     # ^ This returns a boolean value


    RANKS.index(self.rank) > RANKS.index(other.rank)
    # ^ This compares my hand value compared to dealer's hand value
  end

  def ==(other)
    self.rank == other.rank && self.suit == other.suit
    # If in terms of hand value, it's a push
  end

  # We want to set two methods, greater_than and ==. These intro into the logic of the
  # blackjack game
  # Are these the only two methods we need to complete the Blackjack activity?
end
