class Item < ApplicationRecord
    belongs_to :category, optional: true
  
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :image_url, presence: true
end
