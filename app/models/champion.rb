class Champion < ApplicationRecord
  belongs_to :partype
  validates :name, :title, :description, :image, presence: true
  validates :name, uniqueness: true
  has_many :champion_class_joiners
  has_many :champion_classes, through: :champion_class_joiners
  

  def class_list
    champion_classes.map(&:name).join(", ")
  end
end
