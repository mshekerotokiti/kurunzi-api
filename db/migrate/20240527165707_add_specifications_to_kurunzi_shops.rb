class AddSpecificationsToKurunziShops < ActiveRecord::Migration[7.0]
  def change
    add_column :kurunzi_shops, :specifications, :string
  end
end
