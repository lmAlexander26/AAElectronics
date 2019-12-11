class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :department
      t.string :role
      t.integer :addressid

      t.timestamps
    end
  end
end
