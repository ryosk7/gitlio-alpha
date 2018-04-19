class UsersController < ApplicationController
  def index
    @user = current_user
    @user.load_profile_data
  end
end
