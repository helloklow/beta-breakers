class RootesController < ApplicationController
    def new 
        @roote = Roote.new 
    end 

    def create 
        @roote = Roote.new(roote_params)
        @user = session[:user_id]
        @roote.user_id = @user
        if @roote.save 
            redirect_to user_roote_path(@user, @roote)
        else 
            redirect_to new_user_roote_path(@user, @roote)
        end
    end 

    def index 
        if params[:user_id]
            @rootes = User.find(params[:user_id]).rootes
        else 
            @rootes = Rootes.all 
        end
    end 

    def show 
        @rootes = Roote.find(params[:id])
    end

    private 

    def roote_params 
        params.require(:roote).permit(:name, :content,)
    end
end
