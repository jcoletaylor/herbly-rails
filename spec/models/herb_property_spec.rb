# == Schema Information
#
# Table name: herb_properties
#
#  id                    :bigint           not null, primary key
#  property              :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  herb_id               :bigint           not null
#  herb_property_type_id :bigint           not null
#  precedence_type_id    :bigint           not null
#
# Indexes
#
#  index_herb_properties_on_herb_id                (herb_id)
#  index_herb_properties_on_herb_property_type_id  (herb_property_type_id)
#  index_herb_properties_on_precedence_type_id     (precedence_type_id)
#  index_herb_properties_on_property               (property)
#
# Foreign Keys
#
#  fk_rails_...  (herb_id => herbs.id)
#  fk_rails_...  (herb_property_type_id => herb_property_types.id)
#  fk_rails_...  (precedence_type_id => precedence_types.id)
#
require 'rails_helper'

RSpec.describe HerbProperty, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
