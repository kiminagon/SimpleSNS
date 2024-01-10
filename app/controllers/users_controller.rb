class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    User.create(name: params[:username]) unless params[:username].blank?
    redirect_to root_path
  end
end