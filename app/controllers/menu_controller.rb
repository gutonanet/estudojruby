class MenuController < ApplicationController
    def index
      @menu = Menu.where('menu_id is null')
    end
    def show
      @menu = Menu.where('menu_id = ?',params[:id])
      render 'index'
    end
    
end
