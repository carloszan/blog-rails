class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
  end

  def about
  end

  def contact
  end
end
