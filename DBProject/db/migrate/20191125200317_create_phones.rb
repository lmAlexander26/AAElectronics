class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :version
      t.string :model
      t.string :OS
      t.string :vendor

      t.timestamps
    end
  end
end
