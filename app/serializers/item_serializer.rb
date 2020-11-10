class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :amount, :total, :price
  has_many :cart_items
end
