class CreateChampionClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :champion_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
