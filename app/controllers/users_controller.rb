class UsersController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :json

  def index
    respond_with @users = User.where(event_id: current_user.event_id)
  end

  def show
    @user = User.find(params[:id])
    respond_with @user.to_json
  end
end
