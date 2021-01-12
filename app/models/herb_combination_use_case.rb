# == Schema Information
#
# Table name: herb_combination_use_cases
#
#  id                  :bigint           not null, primary key
#  use_case            :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  herb_combination_id :bigint           not null
#
# Indexes
#
#  index_herb_combination_use_cases_on_herb_combination_id  (herb_combination_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_combination_id => herb_combinations.id)
#
class HerbCombinationUseCase < ApplicationRecord
  belongs_to :herb_combination

  validates :herb_combination, presence: true
  validates :use_case, presence: true
end
