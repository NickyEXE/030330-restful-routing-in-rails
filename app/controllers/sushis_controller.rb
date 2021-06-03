class SushisController < ApplicationController

  def index
    if params[:color]
      @sushis = Sushi.select_by_color(params[:color])
    else
      @sushis = Sushi.all
    end
  end

end
