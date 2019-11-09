class CreateTvs < ActiveRecord::Migration[5.1]
  def change
    create_table :tvs do |t|
      t.integer :TVid
      t.string :name
      t.string :version
      t.string :model
      t.string :vendor

      t.timestamps
    end
  end
end
