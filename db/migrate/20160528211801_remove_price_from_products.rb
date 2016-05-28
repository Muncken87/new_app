class RemovePriceFromProducts < ActiveRecord::Migration
  def down
  remove_column :products, :price
end

end
