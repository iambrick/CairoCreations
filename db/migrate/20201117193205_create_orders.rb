class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string, :status
      t.date, :created_at
      t.int :customer_id

      t.belongs_to :customer
      t.timestamps
    end
  end
end