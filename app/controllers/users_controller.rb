class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
  	@user=User.name
  end

  def show
  end

  private

  def set_user
      @user = User.find(params[:id])
    end

end
