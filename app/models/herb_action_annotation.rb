class HerbActionAnnotation < ApplicationRecord
  belongs_to :herb_action

  validates :herb_action, presence: true
  validates :annotation, presence: true
end
