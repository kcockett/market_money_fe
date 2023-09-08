class Market
  attr_reader :id, :name, :address, :city, :state, :zip

  def initialize(id:, name:, address:, city:, state:, zip:)
    @id = id.to_i
    @name = name
    @address = address
    @city = city
    @state = state
    @zip = zip
  end
end
