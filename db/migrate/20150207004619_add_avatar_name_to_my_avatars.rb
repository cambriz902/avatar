class AddAvatarNameToMyAvatars < ActiveRecord::Migration
  def change
    add_column :my_avatars, :name, :string
  end
end
