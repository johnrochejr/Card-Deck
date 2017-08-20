require_relative "card"
# ^ So this means, essentially, I need to communicate with the Card class
# and use it's instance variables and methods
# very similar to us requiring packages in Node

class Deck
  def initialize
    @cards = []
    # Setting of empty of cards to eventually push card values to

    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        # ^ Here, we want to contact the Card class, and iterate through its SUIT
        # and RANKS constants
        # Loops through to get us a card (EG 7 of Spades, Ace of Diamonds)

        @cards.push(Card.new(rank, suit))
        # ^ Once we are dealt a card, we want to push the card to the empty @card array
      end
    end
  end

  def cards_left
    @cards.length
    # ^ This tells us the total amount of cards we dealt at that time
    # ????? Why do we need to know this information?????
  end

  def draw
    @cards.shift
    # Shift the next card into the beginning of our array after drawing
    # We prefer this to be called "hit"
  end

  def shuffle
    @cards.shuffle!
  end
end
