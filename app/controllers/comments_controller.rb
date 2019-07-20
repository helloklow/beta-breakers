class CommentsController < ApplicationController
    before_action :set_roote, only: [:new, :create, :show, :destroy]

    def new 
        @user = session[:user_id]
        @comment = Comment.new 
    end 

    def create 
        @comment = Comment.new(comment_params)
        @comment.roote_id = @roote.id
        @comment.user_id = session[:user_id]
        if @comment.save 
            redirect_to roote_path(@roote)
        else 
            render 'new'
        end
    end  

    def show 
        @comment = Comment.find(params[:id])
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
