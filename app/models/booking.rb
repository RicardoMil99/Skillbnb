class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user

  validates :status, presence: true
end
