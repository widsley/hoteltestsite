class AddFacilityIdsToFacilityOwnerships < ActiveRecord::Migration
  def change
    add_column :facility_ownerships, :facility_ids, :integer
    add_column :facility_ownerships, :bangkok_hotel_ids, :integer
  end
end
