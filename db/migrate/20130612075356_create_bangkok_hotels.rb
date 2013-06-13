class CreateBangkokHotels < ActiveRecord::Migration
  def change
    create_table :bangkok_hotels do |t|

      t.timestamps
    end
    add_column :bangkok_hotels, :name, :string
    add_column :bangkok_hotels, :address, :string
    add_column :bangkok_hotels, :map, :string
    add_column :bangkok_hotels, :character, :string

    add_index :bangkok_hotels, :name
    add_index :bangkok_hotels, :address
    add_index :bangkok_hotels, :map
    add_index :bangkok_hotels, :character
  end
end
