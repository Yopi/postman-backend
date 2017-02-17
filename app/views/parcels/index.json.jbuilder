json.array! @parcels do |parcel|
  json.id parcel.id
  if parcel.request.present?
    json.status do
      json.message parcel.request.status_message
      json.picked_up parcel.request.picked_up
      json.delivered parcel.request.delivered
      if parcel.request.courier.present?
        json.courier do
          json.id parcel.request.courier.id
          json.name parcel.request.courier.name
        end
      end
    end
  else
    json.status do
      json.message parcel.status
      json.picked_up false
      json.delivered false
      json.courier nil
    end
  end

  json.sender parcel.sender
  json.weight parcel.weight
  json.size parcel.size
  json.location do
    json.longitude parcel.service_point.longitude
    json.latitude parcel.service_point.latitude
  end
  json.service_point parcel.service_point.name
end
