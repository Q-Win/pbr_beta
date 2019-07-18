class User < ApplicationRecord
  has_secure_password
  enum role: %w(user admin)
end
