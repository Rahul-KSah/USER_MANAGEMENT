class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_number
      t.string :address
      t.string :pincode
      t.string :city
      t.string :state
      t.date :dob
      t.date :date_of_hiring

      t.timestamps
    end
  end
end
