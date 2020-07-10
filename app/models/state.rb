class State < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country, touch: true
  
  scope :search, -> (term) {
    where("LOWER(name) LIKE :term", term: "%#{term.downcase}%")
  }
  
  def geo
    {
      latitude: self.latitude,
      longitude: self.longitude,
      max_latitude: self.max_latitude,
      max_longitude: self.max_longitude,
      min_latitude: self.min_latitude,
      min_longitude: self.min_longitude,
    }
  end    
end
