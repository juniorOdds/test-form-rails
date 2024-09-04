class RenameColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :firstName, :first_name
    rename_column :users, :lastName, :last_name
    rename_column :users, :birthDay, :birth_day
    rename_column :users, :phoneNumber, :phone_number

  end
end
