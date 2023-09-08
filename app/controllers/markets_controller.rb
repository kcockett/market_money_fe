class MarketsController < ApplicationController
  def index
    markets_service = MarketsService.new
    @markets = markets_service.get_all
  end

  def show
    #
  end

end