class HerbWarning < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_warning_type

  validates :herb, presence: true
  validates :herb_warning_type, presence: true
  validates :warning, presence: true
end
