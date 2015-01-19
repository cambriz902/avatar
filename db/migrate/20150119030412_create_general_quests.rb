class CreateGeneralQuests < ActiveRecord::Migration
  def change
    create_table :general_quests do |t|
      t.string :category
      t.string :title
      t.text :description
      t.integer :experience
      t.boolean :available

      t.timestamps null: false
    end
  end
end
