# == Schema Information
#
# Table name: herbs
#
#  id               :bigint           not null, primary key
#  common_english   :string
#  hanzi            :string
#  latin            :string
#  name             :string           not null
#  pharm_latin      :string
#  pinyin           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  herb_category_id :bigint           not null
#
# Indexes
#
#  index_herbs_on_common_english    (common_english)
#  index_herbs_on_hanzi             (hanzi)
#  index_herbs_on_herb_category_id  (herb_category_id)
#  index_herbs_on_latin             (latin)
#  index_herbs_on_name              (name)
#  index_herbs_on_pharm_latin       (pharm_latin)
#  index_herbs_on_pinyin            (pinyin)
#
# Foreign Keys
#
#  fk_rails_...  (herb_category_id => herb_categories.id)
#
require 'rails_helper'

RSpec.describe Herb, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
