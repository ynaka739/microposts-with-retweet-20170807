class FavoritesController < ApplicationController
   before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    # Favorite.find_or_create_by(micropost_id: micropost.id, user_id: current_user.id)
    # user = User.find(params[:micropost_id])
    # current_user.follow(user)
    flash[:success] = 'お気に入りの登録しました。'
    # redirect_to user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.dislike(micropost)
    # user = User.find(params[:micropost_id])
    # current_user.unfollow(user)
    flash[:success] = 'お気に入りを解除しました。'
    # redirect_to user
  end
end