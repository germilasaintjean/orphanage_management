class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
t.integer  "registration_form_id",    limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.datetime "date_of_issue"
    t.integer  "no_of_item",              limit: 4
    t.decimal  "actual_cost",                       precision: 10, scale: 2
    t.decimal  "total_assistance_amount",           precision: 10, scale: 2

    end
  end
end


