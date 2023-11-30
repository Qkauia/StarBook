class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greate_than: 0 }

  default_scope { where(deleted_at: nil) }

  def destroy
    update(deleted_at: Time.current)
  end
end
