class User < ApplicationRecord
  validates :first_name, presence: { message: "can't be blank" }
  
end
