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
class PrecedenceType < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
