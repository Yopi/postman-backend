class ParcelsController < ApplicationController
  before_action :authenticate

  def index
    return render json: current_user.parcels.to_a.to_json
  end

  def create
    current_user.parcels.build(parcel_params).save
  end

  private
  def person_params
    params.require(:parcel).permit(:service_point_id, :weight, :size)
  end
end
