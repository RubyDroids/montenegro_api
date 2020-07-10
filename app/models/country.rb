class Country < ActiveHash::Base
  include ActiveHash::Associations
  has_many :states
  
  self.data = [
    {
      :id => 1, 
      :name => "Montenegro", 
      :code => "me", 
      :country_code => "382",
      :currency_code => "EUR",
      :latitude => "42.708678",
      :latitude_dec => "42.752803802490234",
      :longitude => "19.37439",
      :longitude_dec => "19.237918853759766",
      :max_latitude => "43.558743",
      :max_longitude => "20.3574869",
      :min_latitude => "41.8297",
      :min_longitude => "18.4337921"
    }
  ]
  
  def geo
    {
      latitude: self.latitude,
      latitude_dec: self.latitude_dec,
      longitude: self.longitude,
      longitude_dec: self.longitude_dec,
      max_latitude: self.max_latitude,
      max_longitude: self.max_longitude,
      min_latitude: self.min_latitude,
      min_longitude: self.min_longitude,
    }
  end
end