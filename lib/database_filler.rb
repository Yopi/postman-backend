require 'open-uri'

class DatabaseFiller
  def self.servicepoints northing, easting
    json = JSON.parse(open("https://api2.postnord.com/rest/businesslocation/v1/servicepoint/findNearestByCoordinates.json?apikey=#{ENV['POSTNORD_API_KEY']}&countryCode=SE&northing=#{northing}&easting=#{easting}&numberOfServicePoints=25").read)

    json['servicePointInformationResponse']['servicePoints'].map {|sp| ServicePoint.create(id: sp['servicePointId'], name: sp['name'], longitude: sp['coordinate']['northing'], latitude: sp['coordinate']['easting']) }
  end

  def self.addParcels
    Parcel.new(id: 1, user_id: 2, service_point_id: 583877, weight: 1000, size: '10cm x 15cm x 20cm').save
    Parcel.new(id: 2, user_id: 2, service_point_id: 583877, weight: 2000, size: '5cm x 5cm x 5cm').save
    Parcel.new(id: 3, user_id: 2, service_point_id: 583673, weight: 1250, size: '100cm x 50cm x 50cm').save
  end
end

DatabaseFiller.addParcels
