class AddClientsIdToReunions < ActiveRecord::Migration[5.0]
  def change
    add_reference :reunions, :clients, foreign_key: true
  end
end
