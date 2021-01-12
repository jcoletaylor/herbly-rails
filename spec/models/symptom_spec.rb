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
require 'rails_helper'

RSpec.describe Symptom, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
