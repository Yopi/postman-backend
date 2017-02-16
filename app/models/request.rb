class Request < ApplicationRecord
  belongs_to :user, as :owner, foreign_key: 'owner_id'
  belongs_to :user, as :courier, foreign_key: 'courier_id'
end
