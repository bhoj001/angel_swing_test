class User < ApplicationRecord
  has_secure_password

  # before_create -> { self.token = SecureRandom.hex }
end
