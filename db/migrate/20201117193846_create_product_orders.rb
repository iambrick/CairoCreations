class CreateProductOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :product_orders do |t|
      t.int, :product_id
      t.int, :order_id
      t.int, :product_price
      t.int :quantity

      t.timestamps
    end
  end
end
