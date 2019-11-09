class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :Employeeid
      t.string :firstname
      t.string :lastname
      t.string :department
      t.string :role
      t.integer :addressid

      t.timestamps
    end
  end
end
