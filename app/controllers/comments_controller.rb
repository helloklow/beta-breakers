class CommentsController < ApplicationController
    before_action :set_roote, only: [:new, :create, :show, :destroy]

    def new 
        @comment = Comment.new 
    end 

    def create 
        @comment = Comment.new(comment_params)
        @comment.roote_id = @roote.id
        @comment.user_id = session[:user_id]
        if @comment.save 
            redirect_to roote_path(@roote)
        else 
            redirect_to new_roote_comment_path
        end
    end  

    def show 
        @comment = Comment.find(params[:id])
    end

    def index
        @user = session[:user_id]
        if params[:user_id]
            @comments = Comment.find(params[:user_id]).comments
        else 
            @comments = Comment.all 
        end
    end 

    def destroy 
        @user = session[:user_id]
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

    def set_roote 
        @roote = Roote.find(params[:roote_id])
    end
end
