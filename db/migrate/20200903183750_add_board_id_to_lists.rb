class AddBoardIdToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :board, :list, foreign_key: true

  end
end
