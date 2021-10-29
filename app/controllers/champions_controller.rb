class ChampionsController < ApplicationController
  def index
    @champions = Champion.all.paginate(page: params[:page], per_page: 10)
  end

  def show
    @champion = Champion.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @champions = Champion.where("name LIKE ?", wildcard_search)
  end
end
