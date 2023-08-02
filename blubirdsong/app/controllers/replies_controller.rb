class RepliesController < ApplicationController
    before_action :set_post
  
    def index
      @replies = @post.replies
      render json: @replies
    end
  
    def create
      @reply = @post.replies.build(reply_params)
      if @reply.save
        render json: @reply, status: :created
      else
        render json: @reply.errors, status: :unprocessable_entity
      end
    end

    def update
        @reply = Reply.find(params[:id])
        if @reply.update(reply_params)
          render json: @reply
        else
          render json: @reply.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @reply = Reply.find(params[:id])
        @reply.destroy
        head :no_content
      end

    private
  
    def set_post
      @post = Post.find(params[:post_id])
    end
  
    def reply_params
      params.require(:reply).permit(:body)
    end
  end