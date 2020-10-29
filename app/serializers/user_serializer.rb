class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  has_one :cart
  has_many :cart_items
end
