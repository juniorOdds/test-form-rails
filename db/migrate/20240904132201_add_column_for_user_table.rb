class AddColumnForUserTable < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :gender, :string
    add_column :users, :birthDay, :date
    add_column :users, :email, :string
    add_column :users, :phoneNumber, :integer
    add_column :users, :subject, :string
  end
end
