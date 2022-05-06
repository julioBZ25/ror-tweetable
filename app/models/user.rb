class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Associations
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
  # Validations
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
end
