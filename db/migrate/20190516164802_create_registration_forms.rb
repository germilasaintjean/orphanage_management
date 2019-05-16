class CreateRegistrationForms < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_forms do |t|
      t.string   "camp_at",                 limit: 45
      t.datetime "camp_on_date"
      t.datetime "registration_date"
      t.string   "name",                    limit: 45
      t.datetime "date_of_birth"
      t.integer  "age",                     limit: 4
      t.string   "sex",                     limit: 45
      t.string   "father_or_husband_name",  limit: 45
      t.string   "street",                  limit: 45
      t.string   "town_or_village_or_city", limit: 45
      t.string   "taluk",                   limit: 45
      t.string   "district",                limit: 45
      t.string   "diagnosis",               limit: 300
      t.string   "advise_or_prescription",  limit: 300
      t.string   "referred_to",             limit: 45
      t.decimal  "monthly_income",                      precision: 10, scale: 2
      t.string   "caste",                   limit: 45
      t.string   "occupation",              limit: 45
      t.string   "disability_nature",       limit: 45
      t.integer  "disability_percentage",   limit: 4
      t.string   "aids_or_appliances",      limit: 100
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "state",                   limit: 45
      t.string   "identification_mark",     limit: 45
      t.integer  "registration_no",         limit: 8
      t.integer  "mobile_no",               limit: 8
      t.integer  "pincode",                 limit: 8
      
      t.timestamps 
    end
  end
end
