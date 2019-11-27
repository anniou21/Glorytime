class Booking < ApplicationRecord
  belongs_to :user

  def geocode_endpoints
    geocoded = Geocoder.search(start_city).first
    if geocoded
      self.start_latitude = geocoded.latitude
      self.start_longitude = geocoded.longitude
    end
    geocoded = Geocoder.search(end_city).first
    if geocoded
      self.end_latitude = geocoded.latitude
      self.end_longitude = geocoded.longitude
    end
    save
  end

  def start_city
    trip.start_city
  end

  def end_city
    trip.end_city
  end

end
