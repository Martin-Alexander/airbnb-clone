class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  validates :stars, presence: true, inclusion: { in: 1..5 }
end
