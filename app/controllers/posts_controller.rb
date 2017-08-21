class PostsController < ApplicationController
  def index

  end

  def create
    post = Post.create(post_params)
    redirect_to(posts_path)
  end
end

def post_params
  params.require(:post).permit(:title, :message)
end
