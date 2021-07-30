# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || manager_path
  end

  def after_sign_out_path_for(resource)
    stored_location_for(resource) || user_session_path
  end
end
