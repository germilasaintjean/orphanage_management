class CreateUsernameUniques < ActiveRecord::Migration[5.2]
  def change
  add_index  :users, :username_UNIQUE, unique: true, using: :btree
  end
end
