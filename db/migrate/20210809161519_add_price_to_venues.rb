class AddPriceToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :price, :integer
  end
end
