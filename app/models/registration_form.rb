class RegistrationForm < ApplicationRecord::Base
    has_one :work, dependent: :destroy
end
