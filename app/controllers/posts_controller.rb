	class PostsController < ApplicationController
		$post=Post.new
		def create
	 		@post=Post.new(post_params)
	 	 	 if @post.save
	 	 	 	redirect_to root_path
	 	 	 else
	 	 	 	render json: {"error":"post not saved"}
	 	 	 end
	 	end
 	def apply
 		if user_signed_in?
 			@post=$post
 			@post.assigned_to=current_user.full_name
 			@post.save
 			redirect_to :back
 		else
 			redirect_to new_user_session_path
 		end
 	end
 	def post_params
 		params.require(:post).permit(:title,:description,:category,:user_id)
 	end
 	def show
 		@post=Post.find(params[:id])
 		$post=@post
 	end
 	def list
 		@post=Post.all
 	end
end
