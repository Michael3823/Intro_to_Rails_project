class ChampionClassJoiner < ApplicationRecord
  belongs_to :champion
  belongs_to :championclass
end
