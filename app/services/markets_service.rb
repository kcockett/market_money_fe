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
        city: market_data[:attributes][:city],
        state: market_data[:attributes][:state]
      )
    end

    markets
  end
end