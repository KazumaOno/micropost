class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      #@favs = current_user.feed_favs.order('created_at DESC').page(params[:page])
    end
  end
end