class CreateTvs < ActiveRecord::Migration[6.0]
  def change
    create_table :tvs do |t|
      t.string :name
      t.string :version
      t.string :model
      t.string :vendor

      t.timestamps
    end
  end
end
