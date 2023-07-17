class Contact < ApplicationRecord
    validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only admits letters" }
    validates :phone_number, presence: true, numericality: { only_integer: true, greater_than: 0 }, length: { is: 9 }
end
