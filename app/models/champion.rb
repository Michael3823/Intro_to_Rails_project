class Champion < ApplicationRecord
  belongs_to :partype
  validates :name, :title, :description, :image, presence: true
  validates :name, uniqueness: true
end
