class MarketsController < ApplicationController
  def index
    markets_service = MarketsService.new
    @markets = markets_service.get_all
  end

  def show
    markets_service = MarketsService.new
    @market = markets_service.get_one(params[:id])
  end

end