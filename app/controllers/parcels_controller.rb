class ParcelsController < ApplicationController
  before_action :authenticate

  def index
    @parcels = current_user.parcels
  end

  def create
    current_user.parcels.build(parcel_params).save
  end

  private
  def person_params
    params.require(:parcel).permit(:service_point_id, :weight, :size)
  end
end
