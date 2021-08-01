class ChangeNameColumnTypeToEmployees < ActiveRecord::Migration[6.0]
  def change
    remove_column :employees, :type
  end
end
