class Flat < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :flat_tags, dependent: :destroy

  validates :description, presence: true, length: { minimum: 5 }
  validates :long_description, presence: true, length: { minimum: 50 }
  validates :main_photo, presence: true
  validates :address, presence: true

  mount_uploader :main_photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    reviews.sum(:stars).fdiv(reviews.count)
  end

  def tags
    flat_tags.pluck(:tag_type)
  end
end
