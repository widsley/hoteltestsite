class CreateFacilityOwnerships < ActiveRecord::Migration
  def change
    create_table :facility_ownerships do |t|
      t.timestamps
    end
  end
end
