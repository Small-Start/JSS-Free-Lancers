	class PostsController < ApplicationController
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
 			Request.create(user_id: current_user.id, post_id: params[:id])
 			flash[:alert]="Your request has been sent"
  			redirect_to list_path
 		else
 		 	redirect_to new_user_session_path
 		end
 	end
 	def post_params
 		params.require(:post).permit(:title,:description,:category,:user_id)
 	end
 	def show
 		@post=Post.find(params[:id])
 	end
 	def list
 		@post=Post.all
 	end
 	def own
 	end
 	def authorize
 		@post=Post.find(params[:post_id])
 		@post.assigned_to=params[:user_id]
 		@post.save
 		redirect_to :back
 	end
end
