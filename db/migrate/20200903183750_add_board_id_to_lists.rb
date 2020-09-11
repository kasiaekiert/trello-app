class AddBoardIdToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :board_id, :integer

  end
end
