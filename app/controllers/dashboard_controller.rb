class DashboardController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :json

  def index

  end
end
