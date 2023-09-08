require "rails_helper"

RSpec.describe "Market", type: :class do
  describe "initialize" do
    it "should initialize with attributes" do
      market = Market.new(id: "123", name: "My Market", address: "123 Colfax Ave", city: "Denver", state: "Colorado", zip: "80100")

      expect(market).to be_a(Market)
      expect(market.id).to be_a(Integer)
      expect(market.id).to eq(123)
      expect(market.name).to eq("My Market")
      expect(market.address).to eq("123 Colfax Ave")
      expect(market.city).to eq("Denver")
      expect(market.state).to eq("Colorado")
      expect(market.zip).to eq("80100")
    end
  end
end