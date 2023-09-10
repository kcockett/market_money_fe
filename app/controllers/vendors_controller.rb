class VendorsController < ApplicationController
  def show
    vendors_service = VendorsService.new
    @vendor = vendors_service.get_one(params[:id])
  end
end