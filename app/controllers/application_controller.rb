class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_with  :html, :json
end
