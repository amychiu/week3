class PokerController < ActionController::Base

	def pickFive
		cards = ["Ace of Hearts",
				"One of Hearts",
				"Two of Hearts",
				"Three of Hearts",
				"Four of Hearts",
				"Five of Hearts",
				"Six of Hearts",
				"Seven of Hearts",
				"Eight of Hearts",
				"Nine of Hearts",
				"Ten of Hearts",
				"Jack of Hearts",
				"Queen of Hearts",
				"King of Hearts",
				"Ace of Diamonds",
				"One of Diamonds",
				"Two of Diamonds",
				"Three of Diamonds",
				"Four of Diamonds",
				"Five of Diamonds",
				"Six of Diamonds",
				"Seven of Diamonds",
				"Eight of Diamonds",
				"Nine of Diamonds",
				"Ten of Diamonds",
				"Jack of Diamonds",
				"Queen of Diamonds",
				"King of Diamonds",
				"Ace of Spades",
				"One of Spades",
				"Two of Spades",
				"Three of Spades",
				"Four of Spades",
				"Five of Spades",
				"Six of Spades",
				"Seven of Spades",
				"Eight of Spades",
				"Nine of Spades",
				"Ten of Spades",
				"Jack of Spades",
				"Queen of Spades",
				"King of Spades",
				"Ace of Clubs",
				"One of Clubs",
				"Two of Clubs",
				"Three of Clubs",
				"Four of Clubs",
				"Five of Clubs",
				"Six of Clubs",
				"Seven of Clubs",
				"Eight of Clubs",
				"Nine of Clubs",
				"Ten of Clubs",
				"Jack of Clubs",
				"Queen of Clubs",
				"King of Clubs"]
			hand = cards.sample(5)
			return hand
	end


	def index
		@pokers = pickFive
	end

end