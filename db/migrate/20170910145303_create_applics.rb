class CreateApplics < ActiveRecord::Migration[5.1]
  def change
    create_table :applics do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.string :full_name_passport
      t.string :preferred_name
      t.string :country_citizen
      t.string :address_street
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :phone
      t.string :native_lang
      t.string :prof_highest_grade
      t.string :prof_university
      t.integer :prof_grad_year
      t.string :prof_actual_position
      t.string :prof_current_institution
      t.string :prof_specialty

      t.timestamps
    end
  end
end
