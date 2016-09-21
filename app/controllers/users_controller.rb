class UsersController < ApplicationController
  def index
    @owners = User.all
    render json: {owners: @owners.map {|u| {name: u.name}}}
  end

  def user_detail
    @user = get_current_user
    render json: {owner_name: @user.name}
  end

end
