class Property < ApplicationRecord
  belongs_to :account
  scope :latest, -> { order(created_at: :desc) }

end
