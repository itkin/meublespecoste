class AddFrendlyIdColumns < ActiveRecord::Migration
  def self.up
    add_column :categories, :cached_slug, :string
    add_column :products, :cached_slug, :string
  end

  def self.down
    remove_column :categories, :cached_slug
    remove_column :products, :cached_slug
  end
end
