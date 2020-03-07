class UsersController < ApplicationController
  before_action :authenticate_user!

  # GET /tweets
  # GET /tweets.json
  def follow_user
    follow_user_id = params[:follow_id]&.to_i
    if current_user.id == follow_user_id
      flash[:alert] = "You cant follow yourself"
      redirect_to user_profile_path(id: follow_user_id) and return
    end
    if current_user.followed_user_ids.include? follow_user_id
      flash[:alert] = "You are already following the user"
      redirect_to user_profile_path(id: follow_user_id) and return
    end
    follower = User.find(follow_user_id)
    current_user.followed_users.new = follower
    current_user.save!
    flash[:notice] = "You are successfully following #{follower.email}"
  end

 def user_profile
   user_id = params[:id]&.to_i
   @user = User.find user_id
 end
end

