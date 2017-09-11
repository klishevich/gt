class Applic < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :full_name_passport, :preferred_name, :country_citizen,
    :address_street, :city, :country, :postal_code, :phone, :native_lang, :prof_highest_grade,
    :prof_university, :prof_grad_year, :prof_actual_position, :prof_current_institution,
    :prof_specialty, presence: true
end
