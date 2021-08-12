class AddFlowersColumnToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :flowers, :string
  end
end
