class Location < ActiveRecord::Base
	#busca la direccion
	geocoded_by :address
	validates :latitude, presence: true
  	validates :longitude, presence: true 
	#antes de la validacion voy a activar la gema
	after_validation :geocode
end
