class VendorsService
  def initialize
    @connection = Faraday.new(url: 'http://localhost:3000') do |faraday|
    end
  end

  def get_one(vendor_id)
    response = @connection.get("/api/v0/vendors/#{vendor_id}")
    data = JSON.parse(response.body, symbolize_names: true)
    vendor_data = data[:data]

    vendor = Vendor.new(
      id: vendor_data[:id],
        name: vendor_data[:attributes][:name],
        contact_name: vendor_data[:attributes][:contact_name],
        contact_phone: vendor_data[:attributes][:contact_phone],
        credit_accepted: vendor_data[:attributes][:credit_accepted],
        description: vendor_data[:attributes][:description]
    )

    vendor
  end
end
