# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_actions
#
#  id                  :bigint           not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  herb_action_type_id :bigint           not null
#  herb_id             :bigint           not null
#
# Indexes
#
#  index_herb_actions_on_herb_action_type_id  (herb_action_type_id)
#  index_herb_actions_on_herb_id              (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_action_type_id => herb_action_types.id)
#  fk_rails_...  (herb_id => herbs.id)
#
class HerbAction < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_action_type

  has_many :herb_action_annotations
  has_many :herb_action_indications
end
