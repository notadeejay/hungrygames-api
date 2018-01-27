class ChangePriceType < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :price, :string
  end
end
