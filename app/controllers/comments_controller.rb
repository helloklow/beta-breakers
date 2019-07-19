class CommentsController < ApplicationController
    before_action :set_user, only: [:create, :index, :update, :show, :destroy]

    def new 
        @user = User.find(params[:user_id])
        @comment = Comment.new 
    end 

    def create 
        @comment = Comment.new(comment_params)
        if @comment.save 
            @roote = @comment.roote_id
            redirect_to roote_path(@roote)
        else 
            redirect_to new_user_comment_path
        end
    end 

    def index
        if params[:user_id]
            @comments = User.find(params[:user_id]).comments
        else 
            @comments = Comments.all 
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

    def set_user 
        @user = session[:user_id]
    end
end
