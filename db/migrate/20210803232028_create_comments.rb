class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.references :user, foreign_key: true
      t.references :wedding, foreign_key: true

      t.timestamps
    end
  end
end
