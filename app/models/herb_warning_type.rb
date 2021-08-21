# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_warning_types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_herb_warning_types_on_name  (name)
#
class HerbWarningType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
