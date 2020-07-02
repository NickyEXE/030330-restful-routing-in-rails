class SushisController < ApplicationController

    def index
        @sushis = Sushi.all
    end

    def show
        @sushi = Sushi.find(params[:id])
    end

    def search
        @sushis = Sushi.select_by_color(params[:query])
        render :index
    end

end
