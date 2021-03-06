class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services
  has_many :bookings
  # has_many :bookings_as_student, through: :services, source: :bookings
  has_many :bookings_as_teacher, through: :services, source: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
end
