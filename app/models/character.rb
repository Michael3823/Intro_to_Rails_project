class Character < ApplicationRecord
    has_many :character_classes
    validates :name, :title, :description, :image, presence: true
    validates :name, uniqueness: true
end
