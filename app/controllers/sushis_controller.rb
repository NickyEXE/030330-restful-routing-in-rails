class SushisController < ApplicationController


    def index
        @sushis = Sushi.all
        render :index
    end

    def show
        @sushi = Sushi.find(params[:id])
    end

    def search
        @sushis = Sushi.find_by_color(params[:color])
        render :index
    end

end
