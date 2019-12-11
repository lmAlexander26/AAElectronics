class RemoveTabletIdFromTablets < ActiveRecord::Migration[5.1]
  def change
    remove_column :tablets, :TabletId, :int
  end
end
