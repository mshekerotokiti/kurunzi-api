class BlogPost < ApplicationRecord
    validates :image_url, presence: true
    validates :title, presence: true
  validates :body, presence: true
  validates :medium_link, presence: true
end
