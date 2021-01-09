class Herb < ApplicationRecord
  belongs_to :herb_category
  has_many :herb_properties
  has_many :herb_dosages

  validates :name, presence: true, uniqueness: true
  validates :herb_category, presence: true
end
