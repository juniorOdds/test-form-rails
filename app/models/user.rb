class User < ApplicationRecord
  validates :first_name, presence: { message: "can't be blank" }
  validates :last_name, presence: { message: "can't be blank" }
  validates :gender, presence: { message: "can't be blank" }
  validates :birth_day, presence: { message: "can't be blank" }
  validates :email, presence: { message: "can't be blank" }
  validates :phone_number, presence: { message: "can't be blank" }
  validates :subject, presence: { message: "can't be blank" }
  
end
