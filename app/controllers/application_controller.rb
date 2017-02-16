class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::Serialization

  prepend_before_action :logged_in
  before_action :set_request_format

  def home
    render json: {name: 'Postman API', api_version: '1.0'}.to_json
  end

  def current_user
    @current_user
  end

  protected
  def logged_in
    email = params[:email]
    password = params[:password]
    if email.present? && password.present?
      user = User.find_by_email(email)
      if user && user.authenticate(password)
        @current_user = user
      end
    end
  end

  def authenticate
    return head 403 if current_user.blank?
  end

  def set_request_format
    request.format = 'json'
  end
end
