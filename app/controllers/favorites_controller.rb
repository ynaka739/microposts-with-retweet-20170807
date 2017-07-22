class FavoritesController < ApplicationController
   before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    # Favorite.find_or_create_by(micropost_id: micropost.id, user_id: current_user.id)
    flash[:success] = 'お気に入りの登録しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.dislike(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end