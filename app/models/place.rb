class Place < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if=> :address_changed?

  has_many :comments, :dependent => :destroy

end
