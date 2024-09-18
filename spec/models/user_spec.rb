require 'rails_helper'
RSpec.describe User, type: :model do
  describe "validations in register form" do
    it 'is not valid without first_name' do
      user = User.new(first_name: nil)
      expect(user).not_to be_valid
    end
  
    it 'is not valid wihtout last_name' do
      user = User.new(last_name: nil)
      expect(user).not_to be_valid
    end

    it 'is not valid without email' do
      user = User.new(email: nil)
      expect(user).not_to be_valid
    end
    it 'is not valid without phone_number' do
      user = User.new(phone_number: nil)
      expect(user).not_to be_valid
    end

    it 'is not valid without gender' do
      user = User.new(gender: nil)
      expect(user).not_to be_valid
    end
  end

  describe "create new user" do
    it 'should create user when register user' do 
      expect {
        User.create!(first_name: "John", last_name: "Doe", email: "VY2kS@example.com", phone_number: "1234567890", gender: "Male", birth_day: "1990-01-01", subject: "option1")
      }.to change(User, :count).by(1)
    end

    it 'should update user when edit user' do
      user = User.create!( first_name: "John", last_name: "Doe", email: "VY2kS@example.com", phone_number: "1234567890", gender: "Male", birth_day: "1990-01-01", subject: "option1")
      user.update!(first_name: "Kill", last_name: "Doe", email: "VY2kS@example.com", phone_number: "1234567890", gender: "Male", birth_day: "1990-01-01", subject: "option1")
      expect(user.first_name).to eq("Kill")
    end
  end
  describe 'should delete user' do 
    it 'should delete user when delete user' do
      user = User.create!( first_name: "Jhon", last_name: "Doe", email: "VY2kS@example.com", phone_number: "1234567890", gender: "Male", birth_day: "1990-01-01", subject: "option1")
      user.destroy
      expect(User.find_by(first_name: "Jhon")).to eq(nil)
    end
      
  end
  
  
end
