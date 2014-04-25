class AddImagesToSpots < ActiveRecord::Migration
  # def change
  #   add_column :spots, :image2, :string
  #   add_column :spots, :image3, :string
  #   add_column :spots, :image4, :string
  # end

  def change
    add_column :spots, :featured, :boolean
  end

  # def up
  #  change_column :spots, :image2, :string
  # end

  # def down
  #  add_column :spots, :image2, :string
  # end



end

