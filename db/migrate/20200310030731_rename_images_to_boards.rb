class RenameImagesToBoards < ActiveRecord::Migration[5.2]
  def change
    rename_table :images, :boards
  end
end
