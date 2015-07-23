class CommentsController < ApplicationController
 #before_action :set_comment
 def create
   
    @post = Post.find(params[:post_id])
    @test=params[:comment][:text]
    
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end


 private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:text,:comment,:post_id,comment_attributes: [:text])
    end

end

