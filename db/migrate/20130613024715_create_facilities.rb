class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|

      t.timestamps
    end
    add_column :facilities, :summary, :text
    add_column :facilities, :activity, :text
    add_column :facilities, :service, :text
    add_column :facilities, :internet, :string
    add_column :facilities, :parking, :string
    add_column :facilities, :checkin, :string
    add_column :facilities, :checkout, :string

    add_index :facilities, :summary
    add_index :facilities, :activity
    add_index :facilities, :service
    add_index :facilities, :internet
    add_index :facilities, :parking
    add_index :facilities, :checkin
    add_index :facilities, :checkout
  end
end
