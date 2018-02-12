class Location < ActiveRecord::Base
	#busca la direccion
	geocoded_by :address
	#antes de la validacion voy a activar la gema
	after_validation :geocode
end
