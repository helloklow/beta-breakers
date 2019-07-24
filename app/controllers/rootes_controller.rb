class RootesController < ApplicationController    
    def new 
        @roote = Roote.new 
    end 

    def create 
        @roote = Roote.new(roote_params)
        @roote.author_id = @user
        if @roote.save 
            redirect_to roote_path(@roote)
        else 
            render 'new'
        end
    end 

    def show 
        @roote = Roote.find(params[:id])
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
            render 'edit'
        end
    end 

    def canyon 
        @rootes = Roote.canyon
    end

    def boulder 
        @rootes = Roote.boulder
    end

    def sport 
        @rootes = Roote.sport
    end

    def trad_aid
        @rootes = Roote.trad_aid
    end

    def ice_alpine
        @rootes = Roote.ice_alpine
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
end