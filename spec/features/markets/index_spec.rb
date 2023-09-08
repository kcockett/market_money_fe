require "rails_helper"

RSpec.describe "Markets Index page", type: :feature do
  describe "As a visitor, When I visit '/markets'" do
    it "US1a - I see all markets listed with their name, city and state" do
      visit markets_path
       
      expect(page).to have_css("#markets_list")
      within "#markets_list" do
        expect(page).to have_content("Name")
        expect(page).to have_content("City")
        expect(page).to have_content("State")
        expect(page).to have_link("More Info")
      end
    end

    it "US1b - When I click a button to see more info on that market, I'm taken to that market's show page '/markets/:id'" do
      visit markets_path
      first(:link, "More Info").click
      expect(current_path).to eq("/markets/322458")
    end
  end
end