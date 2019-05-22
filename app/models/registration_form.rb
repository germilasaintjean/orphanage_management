class RegistrationForm < ApplicationRecord
    has_one :work, dependent: :destroy
end
