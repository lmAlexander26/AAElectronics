class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :Phoneid
      t.string :name
      t.string :version
      t.string :model
      t.string :OS
      t.string :vendor

      t.timestamps
    end
  end
end
