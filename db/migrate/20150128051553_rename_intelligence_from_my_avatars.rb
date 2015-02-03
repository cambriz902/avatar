class RenameIntelligenceFromMyAvatars < ActiveRecord::Migration
  def up
  	rename_column :my_avatars, :intelligence, :intelligence_xp
  end

  def down
  	rename_column :my_avatars, :intelligence_xp, :intelligence
  end
end
