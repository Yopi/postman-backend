class RequestsController < ApplicationController
  before_action :authenticate

  def index
    params[:longitude]
    params[:latitude]

    if params[:longitude].present? && params[:latitude].present?
    else
      @requests = Request.all
      # return render json: .to_a.map { |r| [r, r.parcel.service_point] }.to_json
    end
  end

  private
  def requests_params
#    params.require(:request).permit(:)
  end
end
