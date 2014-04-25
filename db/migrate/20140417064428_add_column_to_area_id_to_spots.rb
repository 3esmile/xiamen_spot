class AddColumnToAreaIdToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :area_id, :integer
  end
end
