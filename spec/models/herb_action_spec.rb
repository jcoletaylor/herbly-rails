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
require 'rails_helper'

RSpec.describe HerbAction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
