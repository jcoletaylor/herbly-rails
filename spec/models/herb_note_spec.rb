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
#  index_herb_notes_on_herb_id  (herb_id)
#
# Foreign Keys
#
#  fk_rails_...  (herb_id => herbs.id)
#
require 'rails_helper'

RSpec.describe HerbNote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
