class AddJumboImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :jumbo_url, :string
  end
end
