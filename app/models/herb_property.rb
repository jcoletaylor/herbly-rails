# frozen_string_literal: true

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
class HerbProperty < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_property_type
  belongs_to :precedence_type

  validates :herb, presence: true
  validates :herb_property_type, presence: true
  validates :precedence_type, presence: true
  validates :property, presence: true

  def property_type
    herb_property_type.name
  end

  def precedence
    precedence_type.name
  end
end
