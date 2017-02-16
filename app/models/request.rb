class Request < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :courier, class_name: 'User', foreign_key: 'courier_id'
end
