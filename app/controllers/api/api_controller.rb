class Api::ApiController < ApplicationController
  # prevent the need for api token for certain actions
  protect_from_forgery with: :null_session

  def authenticate_user!
    # this requests the token be in the header
    header = request.headers["authorization"] || ""
    api_token = header.gsub("Bearer ", "")
    # this requests the token by in the URL itself as params
    # its not working... dunno why
    # if api_token.blank?
    #   api_token = params[:api_token]
    # end

    @current_user = User.find_by api_token: api_token
    if @current_user.blank?
      render json: {status: "unauthorized", message: "API Token missing or invalid"}, status: 401
    end
  end
end
