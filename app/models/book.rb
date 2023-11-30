class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greate_than: 0 }
end
