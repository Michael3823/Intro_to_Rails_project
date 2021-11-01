class ChampionClassesController < ApplicationController
  def index
    @champions = Champion.all
    @support = ChampionClass.where("name LIKE ?Support")
  end

  def show
  end
end
