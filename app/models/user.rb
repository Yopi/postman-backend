class User < ApplicationRecord
  has_secure_password

  has_many :parcels
  has_many :requests, foreign_key: 'owner_id'

  def name
    "#{first_name} #{last_name}"
  end
end
