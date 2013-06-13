class Facility < ActiveRecord::Base
   attr_accessible :summary, :activity, :service, :internet, :parking, :checkin,
                   :checkout,:bangkok_hotel_ids

   has_many :facility_ownership
   has_many :bangkok_hotel, through: :facility_ownership
end
