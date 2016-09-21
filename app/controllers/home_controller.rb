class HomeController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.atricles
    render json: @articles
  end
end
