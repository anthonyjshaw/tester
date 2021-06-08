class PostsController < ApplicationController
    def like
        # grabbing the post
        @post = Post.all.find(params[:id])
        # creating a like with that post and the current user's id
        Like.create(user_id: current_user.id, post_id: @post.id)
        # redirecting them back to that post
        redirect_to post_path(@post)
    end
end
