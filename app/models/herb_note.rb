# == Schema Information
#
# Table name: herb_notes
#
#  id         :bigint           not null, primary key
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  herb_id    :bigint           not null
#
# Indexes
#
#  index_herb_notes_on_herb_id   (herb_id)
#  index_herb_notes_on_note_gin  (note) USING gin
#
# Foreign Keys
#
#  fk_rails_...  (herb_id => herbs.id)
#
class HerbNote < ApplicationRecord
  belongs_to :herb

  validates :herb, presence: true
  validates :note, presence: true
end
