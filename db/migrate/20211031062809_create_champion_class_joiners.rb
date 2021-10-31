class CreateChampionClassJoiners < ActiveRecord::Migration[6.1]
  def change
    create_table :champion_class_joiners do |t|
      t.references :champion, null: false, foreign_key: true
      t.references :champion_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
