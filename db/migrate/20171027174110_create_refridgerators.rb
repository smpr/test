class CreateRefridgerators < ActiveRecord::Migration[5.1]
  def change
    create_table :refridgerators do |t|
      t.string :location
      t.string :brand
      t.integer :size
      t.references :drink, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
