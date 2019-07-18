class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to @user 
        else
            render :new
        end
    end

    def show 
        @user = User.find(params[:id])
    end

    def rootes_index 
        @user = User.find(params[:id])
        @rootes = @user.authored_rootes
        render template: 'rootes/index'
    end

    def roote 
        @user = User.find(params[:id])
        @roote = Roote.find(params[:roote_id])
        render template: 'rootes/show'
    end
    
    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
