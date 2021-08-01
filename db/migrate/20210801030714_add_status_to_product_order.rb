class AddStatusToProductOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :product_orders, :status, :integer
  end
end
