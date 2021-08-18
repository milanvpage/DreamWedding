class AddStateIdToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :state_id, :integer
  end
end
