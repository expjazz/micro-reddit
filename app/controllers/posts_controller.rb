class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(params.require(:post).permit(:title, :content))
        post.user_id = current_user.id
        post.save
        redirect_to post_path(post.id)
    end

    def show
        @post = Post.find(params[:id])
    end
end