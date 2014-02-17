class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from Exception do |exception|
    message = exception.message
    message = "default error message" if exception.message.nil?

    render :text => message
  end
end
