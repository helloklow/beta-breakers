class RootesController < ApplicationController
    def new 
        @roote = Roote.new 
    end 

    def create 
        @user = session[:user_id]
        @roote = Roote.new(roote_params)
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

    def edit 
        @roote = Roote.find(params[:id])
    end 

    def update 
        @user = session[:user_id]
        @roote = Roote.find(params[:id])
        if @roote.update(roote_params)
            redirect_to roote_path(@roote)
        else 
            redirect_to edit_roote_path(@roote)
        end
    end 

    def show 
        @roote = Roote.find(params[:id])
        @user = session[:user_id]
    end

    def destroy 
        @user = session[:user_id]
        @roote = Roote.find(params[:id])
        if @roote.user == @user 
            @roote.destroy
            redirect_to user_path(@user)
        end
    end

    private 

    def roote_params 
        params.require(:roote).permit(:name, :category, :location, :difficulty, :content)
    end
end