class Service < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :skill_name, presence: true
  validates :price_per_hour, presence: true
  validates :availability, presence: true

  include PgSearch::Model
  pg_search_scope :search_for_skills,
    against: [ :skill_name ],
    using: {
    tsearch: { prefix: true }
    }
end
