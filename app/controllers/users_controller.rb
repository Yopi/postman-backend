class UsersController < ApplicationController
  before_action :authenticate

  def me
    return render json: current_user.to_json
  end
end
