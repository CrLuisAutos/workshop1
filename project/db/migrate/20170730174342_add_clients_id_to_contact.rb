class AddClientsIdToContact < ActiveRecord::Migration[5.0]
  def change
    add_reference :contacts, :clients, foreign_key: true
  end
end
