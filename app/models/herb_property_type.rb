# == Schema Information
#
# Table name: herb_property_types
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_herb_property_types_on_name  (name)
#
class HerbPropertyType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
