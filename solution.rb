require "pry"

class Deck

    attr_accessor :cards
    @@all = []

    def initialize

        #(12, 5)
        #init with ranks and types of suits to be more robust using helper methods

        @cards= []
        self.create_4_suits
        #initializes with a @cards deck.cards = []
    end 

    def choose_card 

        deleted_card = self.cards.delete_at(rand(cards.length))
        return deleted_card
    end 

    def create_4_suits 

        suit_array = ["Hearts", "Diamonds", "Clubs", "Spades"]

        suit_array.each do |suit|

            #["A"..."K"] do |rank|
            (1..13).to_a.each do |num|
                
                if num == 1
                    num = "A"
                    self.cards << Card.new(suit, num)
                elsif num == 11
                    num = "J"
                    self.cards << Card.new(suit, num)
                elsif num == 12 
                    num = "Q"
                    self.cards << Card.new(suit, num)
                elsif num == 13
                    num = "K"
                    self.cards << Card.new(suit, num)
                else 
                    num.to_s
                    self.cards << Card.new(suit, num)
                end 
            end 
        end 

    end 
    def self.all

        return @@all
    end 

end

class Card

    attr_reader :rank, :suit, :deck 
    @@all = []

    def self.all 

        return @@all
    end 

    def initialize(suit, rank)

        @suit, @rank = suit, rank 
        @@all << self 
    end 


end
