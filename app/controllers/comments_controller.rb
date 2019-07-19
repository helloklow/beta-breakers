class CommentsController < ApplicationController
    def new 
        @roote = Roote.find(params[:roote_id])
        @comment = Comment.new 
    end 

    def create 
        @comment = Comment.new(comment_params)
        @comment.roote_id = Comment.find(params[:roote][:id])
        @comment.user_id = session[:user_id]
        if @comment.save 
            redirect_to roote_comment_path(@comment)
        else 
            redirect_to new_roote_comment_path
        end
    end  

    def show 
        @comment = Comment.find(params[:id])
    end

    def destroy 
        @comment = Comment.find(params[:id])
        if @comment.user_id == @user 
            @comment.destroy
            redirect_to user_path(@user)
        end
    end

    private 

    def comment_params 
        params.require(:comment).permit(:content, :rating)
    end
end
