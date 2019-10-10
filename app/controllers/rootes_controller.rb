class RootesController < ApplicationController    
    def new 
        @roote = Roote.new 
    end 

    def create 
        @roote = Roote.new(roote_params)
        @roote.author_id = @user
        if @roote.save 
            respond_to do |format|
                format.html {redirect_to roote_path(@roote)}
                format.json {render json: @roote, status: 201}
            end
        else 
            render :new
        end
    end 

    def show 
        find_roote
        respond_to do |format|
            format.html {render :index}
            format.json {render json: @roote, status: 201}
        end
    end

    def index
        @rootes = current_user.user_rootes
        respond_to do |format|
            format.html
            format.json {render json: @rootes, status: 200 }
        end
    end

    def edit 
        find_roote
    end 

    def update 
        find_roote
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
        find_roote 
        # @roote = Roote.find(params[:id])
        if @roote.author_id == @user 
            @roote.destroy
            redirect_to user_path(@user)
        end
    end

    private 

    def roote_params 
        params.require(:roote).permit(:name, :category, :location, :difficulty, :content)
    end

    def find_roote
        @roote = Roote.find(params[:id])
    end
end