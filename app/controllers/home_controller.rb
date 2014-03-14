class HomeController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all.sort { |post| post.upvotes.size - post.downvotes.size }.reverse

  end
end
