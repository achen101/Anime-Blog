class UserAvatarsController < ApplicationController
  def create
    if UserAvatar.find_by(user_id: current_user.id) == nil
      UserAvatar.create(avatar_id: params[:avatar_id], user_id: current_user.id)

    else
      UserAvatar.where(user_id: current_user.id).update(avatar_id: params[:avatar_id])
    end
      flash[:success] = "Avatar has been updated"
      redirect_to user_path(current_user)
  end

  def show
    if !logged_in?
      flash[:danger] = "You must be logged in to use this feature."
      redirect_to root_path
    end
  end
end
