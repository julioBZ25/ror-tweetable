class User < ApplicationRecord
  # Associations
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  validate :name, presence: true
  validate :username, presence: true, uniqueness: true
end
