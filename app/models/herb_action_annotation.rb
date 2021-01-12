# == Schema Information
#
# Table name: herb_action_annotations
#
#  id             :bigint           not null, primary key
#  annotation     :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  herb_action_id :bigint           not null
#
# Indexes
#
#  index_herb_action_annotations_on_herb_action_id  (herb_action_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_action_id => herb_actions.id)
#
class HerbActionAnnotation < ApplicationRecord
  belongs_to :herb_action

  validates :herb_action, presence: true
  validates :annotation, presence: true
end
