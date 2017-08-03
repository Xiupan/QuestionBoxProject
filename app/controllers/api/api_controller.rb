class Api::ApiController < ApplicationController
  # prevent the need for api token for certain actions
  protect_from_forgery with: :null_session

end
