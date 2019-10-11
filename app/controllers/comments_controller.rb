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
            render 'new'
        end
    end  

    def show 
        find_comment
    end

    def index
        set_roote
        @comments = @roote.comments
        respond_to do |format|
            format.html 
            format.json {render json: @comments, status: 200 }
        end
    end

    def destroy
        find_comment
        if @comment.user_id == @user 
            @comment.destroy
            redirect_to user_path(@user)
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
