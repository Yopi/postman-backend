class User < ApplicationRecord
  has_secure_password

  has_many :parcels
  has_many :requests, foreign_key: 'owner_id'
end
