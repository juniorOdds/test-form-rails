class DeleteAddress < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :address
  end
end
