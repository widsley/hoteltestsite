class BangkokHotel < ActiveRecord::Base
   attr_accessible :name, :address, :map, :character, :facility_ids

   has_many :facility_ownership
   has_many :facility, through: :facility_ownership
end
