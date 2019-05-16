class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   "username",           limit: 45
      t.string   "encrypted_password", limit: 80
      t.string   "password",           limit: 45
      t.string   "salt",               limit: 45
      t.datetime "created_at"
      t.datetime "updated_at"
   end
  end
end

