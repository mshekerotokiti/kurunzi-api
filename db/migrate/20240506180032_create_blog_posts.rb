class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :image_url
      t.string :title
      t.text :body
      t.datetime :published_at
      t.string :medium_link

      t.timestamps
    end
  end
end
