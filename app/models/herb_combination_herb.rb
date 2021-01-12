# == Schema Information
#
# Table name: herb_combination_herbs
#
#  id                  :bigint           not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  herb_combination_id :bigint           not null
#  herb_id             :bigint           not null
#
# Indexes
#
#  index_herb_combination_herbs_on_herb_combination_id  (herb_combination_id)
#  index_herb_combination_herbs_on_herb_id              (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_combination_id => herb_combinations.id)
#  fk_rails_...  (herb_id => herbs.id)
#
class HerbCombinationHerb < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_combination

  validates :herb, presence: true
  validates :herb_combination, presence: true
end
