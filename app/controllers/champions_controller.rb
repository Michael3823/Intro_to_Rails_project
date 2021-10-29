class ChampionsController < ApplicationController
  def index
    @champions = Champion.includes(:partype).all.order("name ASC")
  end

  def show
    @champion = Champion.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @champions = Champion.where("name LIKE ?", wildcard_search)
  end
end
