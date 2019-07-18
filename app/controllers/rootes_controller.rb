class RootesController < ApplicationController
    def new 
        @roote = Roote.new 
    end 

    def create 
        @roote = Roote.new(roote_params)
        @user = session[:user_id]
        @roote.author_id = @user
        if @roote.save 
            redirect_to roote_path(@roote)
        else 
            redirect_to new_roote_path(@roote)
        end
    end 

    def index
        @user = session[:user_id]
        if params[:user_id]
            @rootes = User.find(params[:user_id]).rootes
        else 
            @rootes = Roote.all 
        end
    end 

    def show 
        @roote = Roote.find(params[:id])
        @user = session[:user_id]
    end

    private 

    def roote_params 
        params.require(:roote).permit(:name, :category, :location, :difficulty, :content)
    end
end