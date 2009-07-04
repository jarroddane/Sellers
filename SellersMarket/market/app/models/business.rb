class Business < ActiveRecord::Base
  
  	validates_presence_of :lat, :lng 

  #	acts_as_mappable :auto_geocode => true 

    acts_as_mappable 
    
    before_validation_on_create :geocode_address 
    
    private 
    
    def geocode_address 
    geo = GeoKit::Geocoders::MultiGeocoder.geocode(address) 
    errors.add(:address, "Address could not be Geo-Coded") unless geo.success 
    self.lat, self.lng = geo.lat, geo.lng if geo.success 
    end
end
