class RootesController < ApplicationController
    before_action :set_user, only: [:create, :index, :update, :show, :destroy]
    
    def new 
        @roote = Roote.new 
    end 

    def create 
        @roote = Roote.new(roote_params)
        @roote.author_id = @user
        if @roote.save 
            redirect_to roote_path(@roote)
        else 
            redirect_to new_roote_path(@roote)
        end
    end 

    def index
        if params[:user_id]
            @rootes = User.find(params[:user_id]).rootes
        else 
            @rootes = Roote.all 
        end
    end 

    def edit 
        @roote = Roote.find(params[:id])
    end 

    def update 
        @roote = Roote.find(params[:id])
        if @roote.update(roote_params)
            redirect_to roote_path(@roote)
        else 
            redirect_to edit_roote_path(@roote)
        end
    end 

    def show 
        @roote = Roote.find(params[:id])
    end

    def destroy 
        @roote = Roote.find(params[:id])
        if @roote.author_id == @user 
            @roote.destroy
            redirect_to user_path(@user)
        end
    end

    private 

    def roote_params 
        params.require(:roote).permit(:name, :category, :location, :difficulty, :content)
    end

    def set_user 
        @user = session[:user_id]
    end
end