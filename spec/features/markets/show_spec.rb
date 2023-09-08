require "rails_helper"

RSpec.describe "Markets Show page", type: :feature do
  describe "When I visit a market's show page 'markets/:id'" do
    it "US2 I see that market's name and readable address
    And I also see a list of all the Vendors that are at that market
    Each vendor name is a link to that vendor's show page" do
      visit market_path(322474)

      expect(page).to have_content("2nd Street Farmers' Market")
      expect(page).to have_content("194 second street")
      expect(page).to have_content("Amherst, Virginia 24521")
      within("#vendors_list") do
        expect(page).to have_link
      end
    end
  end
end