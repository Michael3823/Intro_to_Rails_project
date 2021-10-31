class ChampionClass < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :champion_class_joiners
    has_many :champions, through: :champion_class_joiners
    
end
