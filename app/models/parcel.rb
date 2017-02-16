class Parcel < ApplicationRecord
  belongs_to :user
  has_one :service_point
end
