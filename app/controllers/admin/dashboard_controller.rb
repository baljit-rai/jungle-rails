class Admin::DashboardController < ApplicationController
  before_action :require_authentication

  def show
  end

  def require_authentication
    authenticate_or_request_with_http_basic do |username, password|
      true if username == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
    end
  end
end
