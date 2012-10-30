require 'deck'

describe Deck do
  let(:deck) { Deck.new }

  it "should have 52 cards" do
    deck.cards.count.should == 52
  end

  describe "the first 13 cards" do
    let(:cards) { deck.cards[0,13] }
    it "should be hearts" do
      cards.all?{|card| card.suit == :heart}.should be_true
    end
    it "should be sorted by value" do
      expected_values = (1..9).to_a
      expected_values << 10     # jack
      expected_values << 10     # queen
      expected_values << 10     # king
      expected_values << [1,11] # ace
      #cards # [Card, Card, Card, Card....]
      #cards.map(&:value) # [1, 2, 3, 4, 5....]
      cards.map(&:value).should == expected_values
    end
  end
  describe "the next 13 cards" do
    let(:cards) { deck.cards[13,13] }
    it "should be spades" do
      cards.all?{|card| card.suit == :spade}.should be_true
    end
    it "should be sorted by value" do
      expected_values = (1..9).to_a
      expected_values << 10     # jack
      expected_values << 10     # queen
      expected_values << 10     # king
      expected_values << [1,11] # ace
                                #cards # [Card, Card, Card, Card....]
                                #cards.map(&:value) # [1, 2, 3, 4, 5....]
      cards.map(&:value).should == expected_values
    end
  end
  describe "the next 13 cards" do
    let(:cards) { deck.cards[26,13] }
    it "should be diamonds" do
      cards.all?{|card| card.suit == :diamond}.should be_true
    end
    it "should be sorted by value" do
      expected_values = (1..9).to_a
      expected_values << 10     # jack
      expected_values << 10     # queen
      expected_values << 10     # king
      expected_values << [1,11] # ace
                                #cards # [Card, Card, Card, Card....]
                                #cards.map(&:value) # [1, 2, 3, 4, 5....]
      cards.map(&:value).should == expected_values
    end
  end
  describe "the next 13 cards" do
    let(:cards) { deck.cards[39,13] }
    it "should be clubs" do
      cards.all?{|card| card.suit == :club}.should be_true
    end
    it "should be sorted by value" do
      expected_values = (1..9).to_a
      expected_values << 10     # jack
      expected_values << 10     # queen
      expected_values << 10     # king
      expected_values << [1,11] # ace
                                #cards # [Card, Card, Card, Card....]
                                #cards.map(&:value) # [1, 2, 3, 4, 5....]
      cards.map(&:value).should == expected_values
    end
  end

end