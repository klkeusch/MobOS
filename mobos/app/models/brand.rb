class Brand < ActiveRecord::Base
  attr_accessible :country, :name
  has_one :error
end
