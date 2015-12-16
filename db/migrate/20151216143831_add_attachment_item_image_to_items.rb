class AddAttachmentItemImageToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :item_image
    end
  end

  def self.down
    remove_attachment :items, :item_image
  end
end
