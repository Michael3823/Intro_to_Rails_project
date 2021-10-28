class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
