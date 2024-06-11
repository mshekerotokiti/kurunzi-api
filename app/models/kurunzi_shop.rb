class KurunziShop < ApplicationRecord
    belongs_to :category, optional: true
    validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :specifications, presence: true
  validates :stock, presence: true
end
