class AddAttachmentImageToAddInfos < ActiveRecord::Migration
  def self.up
    change_table :add_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :add_infos, :image
  end
end
