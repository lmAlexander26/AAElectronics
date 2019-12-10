class RemoveEmployeeidFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :Employeeid, :int
  end
end
