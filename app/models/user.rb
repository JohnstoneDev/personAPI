class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, length: { minimum: 8 }, uniqueness: :true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
