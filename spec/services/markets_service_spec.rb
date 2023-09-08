require "rails_helper"

RSpec.describe "Markets Service", type: :service do
  describe ".initialize" do
    it "should initialize with a default connection" do
      test = MarketsService.new

      expect(test).to be_a(MarketsService)
    end
  end
  describe ".get_all" do
    it "should return a list of all markets" do
      test = MarketsService.new
      markets = test.get_all

      expect(markets).to be_an(Array)

      single_market = markets.first
      expect(single_market).to be_a(Market)
      expect(single_market.id).to be_a(Integer)
      expect(single_market.name).to be_a(String)
      expect(single_market.city).to be_a(String)
      expect(single_market.state).to be_a(String)
    end
  end
end