class CommentsController < ApplicationController
    before_action :set_roote, only: [:new, :create, :show]

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
            render 'new'
        end
    end  

    def show 
        find_comment
    end

    def destroy
        find_comment
        if @comment.user == current_user
            @comment.destroy
            redirect_to user_path(current_user)
        else 
            flash[:error] = "Cannot delete another user's comment."
        end
    end

    private 

    def comment_params 
        params.require(:comment).permit(:content, :rating)
    end

    def find_comment
        @comment = Comment.find(params[:id])
    end

    def set_roote 
        @roote = Roote.find(params[:roote_id])
    end
end
