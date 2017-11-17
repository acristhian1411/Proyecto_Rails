class Marca < ActiveRecord::Base
	has_many :MarcaProveedor
	has_many :Product

	
	
end
