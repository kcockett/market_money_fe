require "rails_helper"

RSpec.describe "Vendors Show page", type: :feature do
  describe "When I visit a vendor's show page 'vendors/:id'" do
    it "I see that vendor's name, contact information, whether they accept credit, and a description of what they sell" do
      visit vendor_path(54924)

      expect(page).to have_content("CHZ PLZ")
      expect(page).to have_content("Contact Info:")
      expect(page).to have_content("Verna Goodwin Ret.")
      expect(page).to have_content("Credit accepted?:")
      expect(page).to have_content("Description:")
    end
  end
end