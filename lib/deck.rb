require 'card'
class Deck
  attr_accessor :cards

  def initialize
    self.cards = []
    52.times do |number|
      value = number % 13 + 1
      if value == 13
        value = [1,11]
      elsif value > 10
        value = 10
      end

      suit = if number < 13
        :heart
      elsif number < 26
        :spade
      elsif number < 39
        :diamond
      else
        :club
      end
      self.cards << Card.new(:suit => suit, :value => value)
    end
  end
end