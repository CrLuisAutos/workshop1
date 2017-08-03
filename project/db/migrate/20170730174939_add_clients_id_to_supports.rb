class AddClientsIdToSupports < ActiveRecord::Migration[5.0]
  def change
    add_reference :supports, :clients, foreign_key: true
  end
end
