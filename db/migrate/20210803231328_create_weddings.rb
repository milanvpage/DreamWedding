class CreateWeddings < ActiveRecord::Migration[6.1]
  def change
    create_table :weddings do |t|
      t.string :title
      t.belongs_to :venue, foreign_key: true

      t.timestamps
    end
  end
end
