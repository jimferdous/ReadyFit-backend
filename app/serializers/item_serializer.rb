class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :price
  has_many :cart_items
end
