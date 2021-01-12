# == Schema Information
#
# Table name: syndromes
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_syndromes_on_name  (name)
#
class Syndrome < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
