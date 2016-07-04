class PostsController < ApplicationController
  before_action :set_post, only: [:show, :apply] 
  def create
    @post = Post.new(title: params[:title], description: params[:description], category: params[:category], user_id: params[:user_id])

    if @post.save
	 	  render json: @post.to_json
    else
      render json: @post.errors.to_json 
    end
  end

  def apply
    if user_signed_in?
      req = Request.new(user_id: current_user.id, post_id: params[:id])
      if req.save
        render json: @post.to_json
      else
        render json: { "status":"failed" }
      end
    else
      render json: { "error":"not authorised" }
    end
  end

  def show
 	  render json: @post
 	end

 	def index
 		render json: Post.all.to_json
 	end

 	def own
 	end

 	def authorize
 	  if current_user.id == @post.user_id
      @post.assigned_to = params[:user_id]
      @post.save
      render json: { "status":"ok" }
    else
      render json: { "error":"not authorised" }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
