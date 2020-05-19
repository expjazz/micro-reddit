class User < ApplicationRecord
  validates :username,  presence: true, uniqueness: true, length: { minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, length: { minimum: 3 }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  has_many :posts
  has_many :comments
end