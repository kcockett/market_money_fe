class Market
  attr_reader :id, :name, :city, :state

  def initialize(id:, name:, city:, state:)
    @id = id
    @name = name
    @city = city
    @state = state
  end
end
