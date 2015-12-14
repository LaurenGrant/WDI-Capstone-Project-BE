#
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :zipcode
end
