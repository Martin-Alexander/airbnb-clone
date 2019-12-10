class FlatTag < ApplicationRecord
  TAG_TYPES = ["Pets Allowed", "Single Bedroom", "Smoking", "Family Friendly"]

  belongs_to :flat
  validates :tag_type, inclusion: { in: TAG_TYPES }
end
