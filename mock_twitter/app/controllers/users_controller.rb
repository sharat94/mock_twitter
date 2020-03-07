class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def unfollow_user
    unfollow_user_id = params[:unfollow_id]&.to_i
    if current_user.id == unfollow_user_id
      flash[:alert] = "You cant unfollow yourself"
      redirect_to user_profile_path(id: unfollow_user_id) and return
    end
    unfollow_user = current_user.following_users.find_by(follower_id: unfollow_user_id)
    if unfollow_user.nil?
      flash[:alert] = "You arent following the user anyways!"
      redirect_to user_profile_path(id: unfollow_user_id)
    else
      unfollow_user.destroy!
      flash[:notice] = "Unfollowed the user!!"
      redirect_to user_profile_path(id: unfollow_user_id)
    end
  end

  def follow_user
    follow_user_id = params[:follow_id]&.to_i
    if current_user.id == follow_user_id
      flash[:alert] = "You cant follow yourself"
      redirect_to user_profile_path(id: follow_user_id) and return
    end
    if current_user.followed_user_ids.include? follow_user_id
      flash[:alert] = "Already following"
      redirect_to user_profile_path(id: follow_user_id) and return
    end
    follower = User.find(follow_user_id)
    current_user.followers << follower
    current_user.save!
    flash[:notice] = "You are successfully following #{follower.email}"
    redirect_to user_profile_path(id: follow_user_id) and return
  end

 def user_profile
   user_id = params[:id]&.to_i
   @user = User.find user_id
 end
end

