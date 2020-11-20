class AddIdsToJoins < ActiveRecord::Migration[6.0]
  def change
    add_column :product_categories, :product_id, :int
    add_column :product_categories, :category_id, :int
  end
end
