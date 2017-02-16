json.array! @requests do |request|
  json.service_point request.parcel.service_point.name
  json.service_point_longitude request.parcel.service_point.longitude
  json.service_point_latitude request.parcel.service_point.latitude
  json.parcel_weight request.parcel.weight
  json.parcel_size request.parcel.size
  json.price request.price
  json.address request.address
  json.courier request.courier_id
  json.accepted request.accepted
end
