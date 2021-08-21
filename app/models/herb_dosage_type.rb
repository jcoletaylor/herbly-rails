# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_dosage_types
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_herb_dosage_types_on_name  (name)
#
class HerbDosageType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
