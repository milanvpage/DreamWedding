class AddVenueToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :venue, :string
  end
end
