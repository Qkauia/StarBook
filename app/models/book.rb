class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greate_than: 0 }

  belongs_to :user
  has_many :comments, -> { order(id: :desc)}

  default_scope { where(deleted_at: nil) }

  def destroy
    update(deleted_at: Time.current)
  end
end
