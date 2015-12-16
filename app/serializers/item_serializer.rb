#
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :zipcode, :item_image_file_name
end
