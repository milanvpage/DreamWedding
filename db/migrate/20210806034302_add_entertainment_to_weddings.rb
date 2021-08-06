class AddEntertainmentToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :entertainment, :string
  end
end
