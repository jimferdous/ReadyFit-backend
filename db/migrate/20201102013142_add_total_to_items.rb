class AddTotalToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :total, :integer
  end
end
