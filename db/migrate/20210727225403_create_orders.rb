class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :client_name
      t.string :table
      t.integer :status
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
