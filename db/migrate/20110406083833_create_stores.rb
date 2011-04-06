class CreateStores < ActiveRecord::Migration
  def self.up
    create_table :stores do |t|
      t.string :name
      t.string :phone_number
      t.string :fax_number
      t.string :street
      t.string :zip_code
      t.string :city
      t.text :comment
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end

  def self.down
    drop_table :stores
  end
end
