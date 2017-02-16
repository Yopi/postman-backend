class Parcel < ApplicationRecord
  belongs_to :user
  belongs_to :service_point
end
