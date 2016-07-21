class RenameJumboUrl < ActiveRecord::Migration
  def change
    rename_column :products, :jumbo_url, :jumbo
  end
end
