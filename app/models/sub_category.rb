class SubCategory < ActiveRecord::Base
  belongs_to :Category
  has_many :Product
end
