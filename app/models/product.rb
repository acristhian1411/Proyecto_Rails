class Product < ActiveRecord::Base
  belongs_to :Sub_category
  belongs_to :Marca
end
