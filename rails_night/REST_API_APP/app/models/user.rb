class User < ApplicationRecord
  has_many :projects
  has_many :contents
  # trigger to create token before firing bbk
  before_create -> { self.auth_token = SecureRandom.hex }
end
