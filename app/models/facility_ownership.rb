class FacilityOwnership < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :faility
  belongs_to :bangkok_hotel
end
