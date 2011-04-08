class AddPositionColumn < ActiveRecord::Migration
  def self.up
    add_column :categories, :position, :integer, :default => 0
    add_column :products, :position, :integer, :default => 0
    add_column :pictures, :position, :integer, :default => 0
    add_column :stores, :position, :integer, :default => 0
  end

  def self.down
    remove_column :categories, :position
    remove_column :products, :position
    remove_column :pictures, :position
    remove_column :stores, :position
  end
end
