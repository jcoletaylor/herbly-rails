# frozen_string_literal: true

# == Schema Information
#
# Table name: herb_warnings
#
#  id                   :bigint           not null, primary key
#  warning              :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  herb_id              :bigint           not null
#  herb_warning_type_id :bigint           not null
#
# Indexes
#
#  index_herb_warnings_on_herb_id               (herb_id)
#  index_herb_warnings_on_herb_warning_type_id  (herb_warning_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_id => herbs.id)
#  fk_rails_...  (herb_warning_type_id => herb_warning_types.id)
#
class HerbWarning < ApplicationRecord
  belongs_to :herb
  belongs_to :herb_warning_type

  validates :warning, presence: true
end
