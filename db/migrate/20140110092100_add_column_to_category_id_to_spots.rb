class AddColumnToCategoryIdToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :category_id, :integer
  end
end
