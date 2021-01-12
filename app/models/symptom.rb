# == Schema Information
#
# Table name: symptoms
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_symptoms_on_name  (name)
#
class Symptom < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
