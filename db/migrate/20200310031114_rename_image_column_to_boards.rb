class RenameImageColumnToBoards < ActiveRecord::Migration[5.2]
  def change
    rename_column :boards, :image, :images
  end
end
