class Employee < ApplicationRecord
    validates :first_name, :last_name, :email, :contact_number, :dob, :date_of_hiring, presence: true

    validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }

    validates :contact_number, format: { with: /\A\d{10}\z/, message: "should be 10 digits" }

    # validates: pincode, numericiality: { only_integer: true, greater_than_or_equal_to: 0}, allow_blank: true
    
    # validates: city, :state,  length{ maximum: 255}, allow_blank: true 


    # Method use to calculate the age of the employee
    def age
        if dob.present?
            now = Time.current.utc.to_date
            age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
        else
            0
        end
    end
end
