class DashboardController < ApplicationController
  def index
    render plain: current_user.email
  end
end
