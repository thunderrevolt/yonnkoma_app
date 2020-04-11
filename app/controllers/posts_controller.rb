class PostsController < ApplicationController
  

  def index
    @posts = Post.includes(:user,:boards).limit(10).order("created_at DESC")
  end

  def new
    @post = Post.new
    @post.boards.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      params[:boards][:images].each do |a|
        @boards = @post.boards.create!(images: a, post_id: @post.id)
      end
      redirect_to root_path, notice: '投稿OK'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @post_boards = @post.boards.all
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(params[:id])
    else
      render :edit
    end
  end
  
  def destroy
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.destroy
      redirect_to root_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, boards_attributes: [:images, :_destroy, :id]).merge(user_id: current_user.id)
  end

end
