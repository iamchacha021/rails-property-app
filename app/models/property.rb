class Property < ApplicationRecord
  belongs_to :account
  has_one_attached :image
  scope :latest, -> { order(created_at: :desc) }

end
