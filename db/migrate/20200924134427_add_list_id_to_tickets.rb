class AddListIdToTickets < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :ticket, foreign_key: true
  end
end
