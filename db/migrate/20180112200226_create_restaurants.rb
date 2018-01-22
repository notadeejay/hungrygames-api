class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :website
      t.text :address
      t.integer :price
      t.text :cuisine

      t.timestamps
    end
  end
end
