class User < ApplicationRecord

  has_many :favorites
  has_secure_password
  enum role: %w(user admin)
end
