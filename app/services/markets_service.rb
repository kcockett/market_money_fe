class MarketsService
  def initialize
    @connection = Faraday.new(url: 'http://localhost:3000') do |faraday|
    end
  end

  def get_all
    response = @connection.get('/api/v0/markets')
    data = JSON.parse(response.body, symbolize_names: true)
    markets_data = data[:data]
    
    markets = markets_data.map do |market_data|
      Market.new(
        id: market_data[:id],
        name: market_data[:attributes][:name],
        address: market_data[:attributes][:street],
        city: market_data[:attributes][:city],
        state: market_data[:attributes][:state],
        zip: market_data[:attributes][:zip]
      )
    end
    
    markets
  end
  
  def get_one(market_id)
    response = @connection.get("/api/v0/markets/#{market_id}")
    data = JSON.parse(response.body, symbolize_names: true)
    market_data = data[:data]

    market = Market.new(
      id: market_data[:id],
        name: market_data[:attributes][:name],
        address: market_data[:attributes][:street],
        city: market_data[:attributes][:city],
        state: market_data[:attributes][:state],
        zip: market_data[:attributes][:zip]
    )

    market
  end

  def vendors_at_market(market_id)
    response = @connection.get("/api/v0/markets/#{market_id}/vendors")
    data = JSON.parse(response.body, symbolize_names: true)
    vendors_data = data[:data]

    vendors = vendors_data.map do |vendor_data|
      Vendor.new(
        id: vendor_data[:id],
          name: vendor_data[:attributes][:name],
          description: vendor_data[:attributes][:description],
          contact_name: vendor_data[:attributes][:contact_name],
          contact_phone: vendor_data[:attributes][:contact_phone],
          credit_accepted: vendor_data[:attributes][:credit_accepted]
      )
    end
  end
end