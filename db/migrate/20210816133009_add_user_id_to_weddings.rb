class AddUserIdToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :user_id, :integer
  end
end
