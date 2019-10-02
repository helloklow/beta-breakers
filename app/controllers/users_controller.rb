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
        find_user
        @rootes = @user.authored_rootes
    end

    def rootes_index 
        find_user
        @rootes = @user.authored_rootes
        render template: 'rootes/index'
    end

    def roote 
        find_user
        @roote = Roote.find(params[:roote_id])
        render template: 'rootes/show'
    end
    
    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
