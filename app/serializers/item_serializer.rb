#
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :zipcode, :phone_number, :item_image_file_name
end
