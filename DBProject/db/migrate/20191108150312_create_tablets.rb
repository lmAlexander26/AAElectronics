class CreateTablets < ActiveRecord::Migration[5.1]
  def change
    create_table :tablets do |t|
      t.integer :Tabletid
      t.string :name
      t.string :version
      t.string :model
      t.string :OS
      t.string :vendor

      t.timestamps
    end
  end
end
