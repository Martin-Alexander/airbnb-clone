class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :from_date, presence: true #, numericality: { greater_than: to_date, message: "invalid" }
  validates :to_date, presence: true #, inclusion: { in: Date.today..from_date, message: "invalid" }
end
