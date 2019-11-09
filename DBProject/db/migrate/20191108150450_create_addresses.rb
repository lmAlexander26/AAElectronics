class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :Addressid
      t.string :address
      t.string :state
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
