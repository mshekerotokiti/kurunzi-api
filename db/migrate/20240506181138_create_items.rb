class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
    add_index :items, :category_id
  end
end
