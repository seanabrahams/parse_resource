class ParseGeoPoint

  attr_accessor :latitude, :longitude

  def initialize(hash=nil)
    if hash.nil?
      self.latitude=0.0
      self.longitude=0.0
    else
      self.latitude = hash["latitude"] || hash[:latitude]
      self.longitude = hash["longitude"] || hash[:longitude]
    end
  end

  def to_pointer
    HashWithIndifferentAccess.new({"__type"=>"GeoPoint", :latitude=> self.latitude.to_f, :longitude => self.longitude.to_f })
  end

end