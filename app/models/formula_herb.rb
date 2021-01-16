# == Schema Information
#
# Table name: formula_herbs
#
#  id         :bigint           not null, primary key
#  dosage     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  formula_id :bigint           not null
#  herb_id    :bigint           not null
#
# Indexes
#
#  index_formula_herbs_on_formula_id  (formula_id)
#  index_formula_herbs_on_herb_id     (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_id => formulas.id)
#  fk_rails_...  (herb_id => herbs.id)
#
class FormulaHerb < ApplicationRecord
  belongs_to :formula
  belongs_to :herb

  validates :formula, presence: true
  validates :herb, presence: true
  validates :dosage, presence: true

  has_many :formula_herb_actions
end
