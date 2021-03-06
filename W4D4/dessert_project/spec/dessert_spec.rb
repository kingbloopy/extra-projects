require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) { Dessert.new("brownie", 12, chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end
    it "sets a quantity" do 
      expect(brownie.quantity).to eq(12)
    end
    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("brownie", "a lot") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include("sugar")
    brownie.add_ingredient("sugar")
      expect(brownie.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
  it "shuffles the ingredient array" do 
    # brownie.add_ingredient("butter")
    # brownie.add_ingredient("chocolate")
    # brownie.add_ingredient("flour")
    expect(brownie.ingredients).to receive(:shuffle!)
    brownie.mix!
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.quantity).to eq(12)
      brownie.eat(2)
      expect(brownie.quantity).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(13) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      allow(chef).to receive(:bake).with(self)
    end
  end
end


  def make_more
    @chef.bake(self)
  end