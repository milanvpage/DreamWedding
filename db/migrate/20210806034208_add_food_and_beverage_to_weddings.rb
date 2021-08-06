class AddFoodAndBeverageToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :food_and_beverage, :string
  end
end
