require "rails_helper"

RSpec.describe "Markets Show page", type: :feature do
  describe "When I visit a market's show page 'markets/:id'" do
    it "US2 I see that market's name and readable address
    And I also see a list of all the Vendors that are at that market
    Each vendor name is a link to that vendor's show page" do
      visit market_path(322458)

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content("Washington, District of Columbia 20009")
      within("#vendor_list") do
        expect(page).to have_css(a)
      end
    end
  end
end