class ServicePointsController < ApplicationController
  before_action :authenticate

  def index
    if params[:longitude].present? && params[:latitude].present?
      return render json: ServicePoint.select("*, earth_distance(ll_to_earth(#{params[:latitude]}, #{params[:longitude]}), ll_to_earth(latitude, longitude)) as distance").where('earth_box(ll_to_earth(?, ?), 1000) @> ll_to_earth(latitude, longitude)', params[:latitude], params[:longitude]).order('distance').limit(25)
    else
      return render json: ServicePoint.all.limit(25)
    end
  end

  private
  def person_params
    params.require(:parcel).permit(:service_point_id, :weight, :size)
  end
end
