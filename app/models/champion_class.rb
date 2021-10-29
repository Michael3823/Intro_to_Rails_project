class ChampionClass < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
