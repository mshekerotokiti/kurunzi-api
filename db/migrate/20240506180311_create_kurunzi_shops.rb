class CreateKurunziShops < ActiveRecord::Migration[7.0]
  def change
    create_table :kurunzi_shops do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
