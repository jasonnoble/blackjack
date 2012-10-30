require 'card'
describe Card do
  let(:card) { Card.new(:suit => :heart, :value => 1) }
  it "has a suit" do
    card.suit.should == :heart
  end
  it "has a value" do
    card.value.should == 1
  end
end