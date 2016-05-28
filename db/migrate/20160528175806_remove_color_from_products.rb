class RemoveColorFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :color, :integer
  end
end
