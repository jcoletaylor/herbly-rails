# == Schema Information
#
# Table name: formula_manifestation_symptoms
#
#  id                       :bigint           not null, primary key
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  formula_manifestation_id :bigint           not null
#  symptom_id               :bigint           not null
#
# Indexes
#
#  index_formula_manifest_sx_on_formula_manifest_id    (formula_manifestation_id)
#  index_formula_manifestation_symptoms_on_symptom_id  (symptom_id)
#
# Foreign Keys
#
#  fk_rails_...  (formula_manifestation_id => formula_manifestations.id)
#  fk_rails_...  (symptom_id => symptoms.id)
#
require 'rails_helper'

RSpec.describe FormulaManifestationSymptom, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
