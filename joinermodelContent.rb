class ChampionClassJoiner < ApplicationRecord
    belongs_to :champion
    belongs_to :championclass
    has_many :champion_classes
    has_many :champions, :through => :champion_class_joiners
  end
  