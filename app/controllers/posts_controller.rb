class PostsController < ApplicationController
	def create
 		@post=Post.new(post_params)
 	 	 if @post.save
 	 	 	redirect_to root_path
 	 	 else
 	 	 	render json: {"error":"post not saved"}
 	 	 end
 	end
 	def post_params
 		params.require(:post).permit(:title,:description,:category,:user_id)
 	end
end
