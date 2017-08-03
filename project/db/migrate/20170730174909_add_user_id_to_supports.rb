class AddUserIdToSupports < ActiveRecord::Migration[5.0]
  def change
    add_reference :supports, :users, foreign_key: true
  end
end
