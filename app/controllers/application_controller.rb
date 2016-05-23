class ApplicationController < ActionController::Base
	add_flash_types :success, :warning, :danger, :info
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
