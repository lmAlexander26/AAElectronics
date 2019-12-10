class RemoveLaptopIdFromLaptops < ActiveRecord::Migration[5.1]
  def change
    remove_column :laptops, :Laptopid, :int
  end
end
