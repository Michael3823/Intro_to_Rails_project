class Partype < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
