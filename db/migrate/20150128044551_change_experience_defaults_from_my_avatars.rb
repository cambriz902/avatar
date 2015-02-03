class ChangeExperienceDefaultsFromMyAvatars < ActiveRecord::Migration
  def up
  	change_column :my_avatars, :health_xp, :integer, :default => 0 
  	change_column :my_avatars, :stamina_xp, :integer, :default => 0
  	change_column :my_avatars, :strength_xp, :integer, :default => 0
  	change_column :my_avatars, :intelligence, :integer, :default => 0
  end

  def down
  	change_column :my_avatars, :health_xp, :integer
  	change_column :my_avatars, :stamina_xp, :integer
  	change_column :my_avatars, :strength_xp, :integer
  	change_column :my_avatars, :intelligence, :integer
  end
end
