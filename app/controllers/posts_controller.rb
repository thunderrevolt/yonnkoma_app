class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user,:boards).limit(10).order("created_at DESC")
  end

  def new
    @post = Post.new
    4.times {@board = @post.boards.build}
  end

  def create
    @post = Post.new(post_params)
    # respond_to do |format|
      if @post.save
        params[:boards][:images].each do |a|
          @boards = @post.boards.create!(images: a, post_id: @post.id)
        end
        redirect_to root_path, notice: '投稿OK'
      else
        render :new
      end
    # end
  end

  def show
    @post = Post.find(params[:id])
    @post_boards = @post.boards.all
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :text,boards_attributes: [:id, {images: []}, :post_id]).merge(user_id: current_user.id)
  end

end
