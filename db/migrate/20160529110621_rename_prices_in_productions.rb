class RenamePricesInProductions < ActiveRecord::Migration
  def change
    rename_column :products, :prices, :price
  end
end
