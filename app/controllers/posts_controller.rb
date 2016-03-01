class PostsController < ApplicationController

  before_action :must_logged,    only: [:new, :create, :edit, :update, :destroy]
  before_action :correct_author, only: [:edit, :update, :destroy]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_author
    if @post.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_url
  end
  private

    def post_params
      params.require(:post).permit(:title, :text)
    end

    def correct_author
      @post = Post.find_by(id: params[:id])
      redirect_to root_url unless current_author.id == @post.author_id
    end

end
