class RemoveColumnPriceFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :price, :string
  end
end
