class Herb < ApplicationRecord
  belongs_to :herb_category

  validates :name, presence: true, uniqueness: true
  validates :herb_category, presence: true

  def herb_category_name
    herb_category.name
  end
end
