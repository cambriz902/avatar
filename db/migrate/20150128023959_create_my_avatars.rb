class CreateMyAvatars < ActiveRecord::Migration
  def change
    create_table :my_avatars do |t|
      t.integer :health_xp
      t.integer :stamina_xp
      t.integer :strength_xp
      t.integer :intelligence
      t.integer :user_id

      t.timestamps null: false
    end
      add_index :my_avatars, :user_id
  end
end
