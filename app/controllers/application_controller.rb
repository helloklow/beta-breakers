class ApplicationController < ActionController::Base
    before_action :set_user, only: [:new, :create, :show, :index, :edit, :update, :destroy, :search, :canyon, :boulder, :sport, :trad_aid, :ice_alpine]

    private

    def set_user 
        @user = session[:user_id]
    end
end
