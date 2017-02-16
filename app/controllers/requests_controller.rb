class RequestsController < ApplicationController
  before_action :authenticate

  def index
    params[:longitude]
    params[:latitude]

    if params[:longitude].present? && params[:latitude].present?
      # @TODO
      # @requests = Request.all.order("nära").where("närmare än 10km")
    else
      @requests = Request.all
    end
  end

  def pending
    @requests = Request.where(courier_id: current_user.id)
  end

  def create
    current_user.requests.build(requests_params).save
  end

  private
  def requests_params
    params.require(:request).permit(:parcel_id, :owner_id, :courier_id, :price, :address, :accepted)
  end
end


