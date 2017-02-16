class RequestsController < ApplicationController
  before_action :authenticate

  def index
    params[:longitude]
    params[:latitude]

    if params[:longitude].present? && params[:latitude].present?
    else
      return render json: Request.all.to_a.to_json
    end

    return render json: current_user.parcels.to_a.to_json
  end

  private
  def requests_params
    params.require(:request).permit(:)
  end
end
