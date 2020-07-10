require 'json'
require 'ostruct'

class StatesService
  def create(country_id = 1, states)
    unless states.nil?
      State.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!("states")
      
      states.each do |state|
        data = state.last
      
        State.create(
          name: data.name,
          zipcode: nil,
          iso_code: nil,
          geo: data.try(:geo),
          latitude: data.try(:geo)["latitude"],
          longitude: data.try(:geo)["latitude"],
          min_latitude: data.try(:geo)["min_latitude"],
          min_longitude: data.try(:geo)["min_longitude"],
          max_latitude: data.try(:geo)["max_latitude"],
          max_longitude: data.try(:geo)["max_longitude"],
          country_code: "me",
          country_id: country_id
        )
      end
    end        
  end
  
  def retrieve_details(zipcode)
    endpoint = "https://nominatim.openstreetmap.org/search?country=argentina&postalcode=#{zipcode}&addressdetails=1&format=json"

    results = JSON.parse(RestClient.get(endpoint), object_class: OpenStruct)

    if results.first.try(:address).present?
      return results.first
    else
      return false
    end
  end
end
