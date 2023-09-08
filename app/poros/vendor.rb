class Vendor
  attr_reader :id, :name, :description, :contact_name, :contact_phone, :credit_accepted

  def initialize(id:, name:, description:, contact_name:, contact_phone:, credit_accepted:)
    @id = id.to_i
    @name = name
    @description = description
    @contact_name = contact_name
    @contact_phone = contact_phone
    @credit_accepted = credit_accepted
  end
end