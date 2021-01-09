class HerbNote < ApplicationRecord
  belongs_to :herb

  validates :herb, presence: true
  validates :note, presence: true
end
