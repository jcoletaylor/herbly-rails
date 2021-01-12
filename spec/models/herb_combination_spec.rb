# == Schema Information
#
# Table name: herb_combinations
#
#  id          :bigint           not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_herb_combinations_on_description  (description) UNIQUE
#
require 'rails_helper'

RSpec.describe HerbCombination, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
