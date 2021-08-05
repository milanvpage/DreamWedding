class AddDestinationToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :destination, :string
  end
end
