class ChampionsController < ApplicationController
  def index
    @champions = Champion.includes(:partype).all.order("name ASC")
  end

  def show
    @champion = Champion.find(params[:id])
  end
end
