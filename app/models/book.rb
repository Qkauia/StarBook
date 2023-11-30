class Book < ApplicationRecord
  validates :title, presence: true
  # validates :price, decericality: { greate_than: 0 }
end
