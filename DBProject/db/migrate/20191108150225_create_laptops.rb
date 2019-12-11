class CreateLaptops < ActiveRecord::Migration[5.1]
  def change
    create_table :laptops do |t|
      t.integer :Laptopid
      t.string :name
      t.string :version
      t.string :model
      t.string :OS
      t.string :vendor

      t.timestamps
    end
  end
end
