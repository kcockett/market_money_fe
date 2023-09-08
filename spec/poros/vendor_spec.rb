require "rails_helper"

RSpec.describe "Vendor", type: :class do
  describe "initialize" do
    it "should initialize with attributes" do
      vendor = Vendor.new(id: "123", name: "Best Food Vendor", description: "I'm the best vendor", contact_name: "Mr. Vendor", contact_phone: "303-555-1212", credit_accepted: true)

      expect(vendor).to be_a(Vendor)
      expect(vendor.id).to be_a(Integer)
      expect(vendor.id).to eq(123)
      expect(vendor.name).to eq("Best Food Vendor")
      expect(vendor.description).to eq("I'm the best vendor")
      expect(vendor.contact_name).to eq("Mr. Vendor")
      expect(vendor.contact_phone).to eq("303-555-1212")
      expect(vendor.credit_accepted).to eq(true)
    end
  end
end