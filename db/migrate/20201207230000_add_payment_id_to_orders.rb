class AddPaymentIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :paymentId, :string
  end
end
