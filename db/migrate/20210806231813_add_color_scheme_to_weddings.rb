class AddColorSchemeToWeddings < ActiveRecord::Migration[6.1]
  def change
    add_column :weddings, :color_scheme, :string
  end
end
