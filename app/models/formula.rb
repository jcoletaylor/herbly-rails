# == Schema Information
#
# Table name: formulas
#
#  id             :bigint           not null, primary key
#  common_english :string
#  english        :string
#  hanzi          :string
#  name           :string           not null
#  pinyin         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_formulas_on_common_english  (common_english)
#  index_formulas_on_english         (english)
#  index_formulas_on_hanzi           (hanzi)
#  index_formulas_on_name            (name)
#  index_formulas_on_pinyin          (pinyin)
#
class Formula < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
