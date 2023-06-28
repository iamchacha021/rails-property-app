class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :roomsinteger
      t.string :photo
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
