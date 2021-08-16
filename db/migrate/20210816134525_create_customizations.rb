class CreateCustomizations < ActiveRecord::Migration[6.1]
  def change
    create_table :customizations do |t|
      t.string :food
      t.string :beverage
      t.belongs_to :wedding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
