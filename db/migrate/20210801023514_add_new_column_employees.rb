class AddNewColumnEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :worker, :integer
  end
end
