class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :cart_items
  belongs_to :user
end
