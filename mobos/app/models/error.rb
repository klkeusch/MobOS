class Error < ActiveRecord::Base
  attr_accessible :brand_id, :construction_year, :model_id, :obd_content, :obd_id
end
