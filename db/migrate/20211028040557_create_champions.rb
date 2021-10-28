class CreateChampions < ActiveRecord::Migration[6.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :image
      t.references :partype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
