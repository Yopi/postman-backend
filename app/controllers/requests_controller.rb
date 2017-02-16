class RequestsController < ApplicationController
  before_action :authenticate

  def index
    if params[:longitude].present? && params[:latitude].present?
      @requests = ServicePoint.select("*, earth_distance(ll_to_earth(#{params[:latitude]}, #{params[:longitude]}), ll_to_earth(latitude, longitude)) as distance").where('earth_box(ll_to_earth(?, ?), 1000) @> ll_to_earth(latitude, longitude)', params[:latitude], params[:longitude]).order('distance').map(&:parcels).flatten.compact.map(&:request).compact
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


