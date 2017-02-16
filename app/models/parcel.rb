class Parcel < ApplicationRecord
  has_one :request
  belongs_to :user
  belongs_to :service_point
end
