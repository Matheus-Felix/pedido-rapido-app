# frozen_string_literal: true

module Manager
  # Base controller for gestor
  class BaseController < ApplicationController
    layout 'manager'

    before_action :authenticate_user!
  end
end
