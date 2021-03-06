class Prototype < ApplicationRecord
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :was_attached?, presence: true

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  def was_attached?
    self.image.attached?
  end
end
