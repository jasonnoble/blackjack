class Card
  attr_accessor :suit, :value
  def initialize(options = {:suit => :heart, :value => 2})
    self.suit = options[:suit]
    self.value = options[:value]
  end
end