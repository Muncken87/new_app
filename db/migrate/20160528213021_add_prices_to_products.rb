class AddPricesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :prices, :integer
  end
end
