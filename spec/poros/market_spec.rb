require "rails_helper"

RSpec.describe "Market", type: :class do
  describe "initialize" do
    it "should initialize with attributes" do
      market = Market.new(id: "123", name: "My Market", city: "Denver", state: "Colorado")

      expect(market).to be_a(Market)
      expect(market.id).to be_a(Integer)
      expect(market.id).to eq(123)
      expect(market.name).to eq("My Market")
      expect(market.city).to eq("Denver")
      expect(market.state).to eq("Colorado")
    end
  end
end