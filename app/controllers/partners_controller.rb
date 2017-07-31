class PartnersController < ApplicationController
  def index
    @count = 0
    @partners = Partner.all
  end

  private
  def partner_params
    params.require(:partner).permit(:name)
  end
end
