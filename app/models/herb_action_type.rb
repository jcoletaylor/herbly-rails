# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_action_types
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_herb_action_types_on_name      (name)
#  index_herb_action_types_on_name_gin  (name) USING gin
#
class HerbActionType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
