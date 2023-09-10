require "rails_helper"

RSpec.describe "Vendors Service", type: :service do
  describe ".initialize" do
    it "should initialize with a default connection" do
      test = VendorsService.new

      expect(test).to be_a(VendorsService)
    end
  end
  describe ".get_one" do
    it "should return a list of all Vendors" do
      test = VendorsService.new
      vendor = test.get_one(54924)

      expect(vendor).to be_a(Vendor)
      expect(vendor.id).to be_a(Integer)
      expect(vendor.name).to be_a(String)
      expect(vendor.contact_name).to be_a(String)
      expect(vendor.contact_phone).to be_a(String)
      expect(vendor.credit_accepted).to eq(true).or(eq(false))
      expect(vendor.description).to be_a(String)
    end
  end
end