class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, length: { in: 6..16,
    message: "number of characters is off the valid range!" }
  validates :password, presence: true, length: { minimum: 8,
    message: "number of characters is off the valid range!" }
  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
    message: "format is incorrect!" }
end
