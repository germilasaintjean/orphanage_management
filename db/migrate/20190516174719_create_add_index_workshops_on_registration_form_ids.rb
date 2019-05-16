class CreateAddIndexWorkshopsOnRegistrationFormIds < ActiveRecord::Migration[5.2]
  def change
     add_index :workshops, :registration_form_id, using: :btree
  end
end
