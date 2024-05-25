class AddStockToKurunziShops < ActiveRecord::Migration[7.0]
  def change
    add_column :kurunzi_shops, :stock, :text
  end
end
