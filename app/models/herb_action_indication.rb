class HerbActionIndication < ApplicationRecord
  belongs_to :herb_action

  validates :herb_action, presence: true
  validates :indication, presence: true
end
