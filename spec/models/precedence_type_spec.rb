# == Schema Information
#
# Table name: precedence_types
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_precedence_types_on_name  (name)
#
require 'rails_helper'

RSpec.describe PrecedenceType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
