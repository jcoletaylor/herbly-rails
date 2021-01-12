# == Schema Information
#
# Table name: herb_action_indications
#
#  id             :bigint           not null, primary key
#  indication     :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  herb_action_id :bigint           not null
#
# Indexes
#
#  index_herb_action_indications_on_herb_action_id  (herb_action_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_action_id => herb_actions.id)
#
require 'rails_helper'

RSpec.describe HerbActionIndication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
