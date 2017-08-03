class AddUserIdToReunions < ActiveRecord::Migration[5.0]
  def change
    add_reference :reunions, :users, foreign_key: true
  end
end
