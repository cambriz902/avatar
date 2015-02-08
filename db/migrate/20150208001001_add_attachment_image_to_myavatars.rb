class AddAttachmentImageToMyavatars < ActiveRecord::Migration
  def self.up
    change_table :my_avatars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :my_avatars, :image
  end
end
