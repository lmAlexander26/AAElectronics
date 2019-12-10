class RemovePhoneidFromPhones < ActiveRecord::Migration[5.1]
  def change
    remove_column :phones, :Phoneid, :int
  end
end
