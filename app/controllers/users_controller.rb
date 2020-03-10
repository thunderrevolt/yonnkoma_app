class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.name
    @posts = user.posts
  end
end
