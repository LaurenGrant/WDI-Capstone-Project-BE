#
class Item < ActiveRecord::Base
  belongs_to :user

  has_attached_file :item_image, styles: { item_feature: "280x280>", item_dashboard: "222x222>" }, default_url: "/images/:style/missing.png",
    :path => "/images/:id/:style/:filename"
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/

  def rename_item_image
    self.item_image.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_item_image

end
