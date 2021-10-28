class CreatePartypes < ActiveRecord::Migration[6.1]
  def change
    create_table :partypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
