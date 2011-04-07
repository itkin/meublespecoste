class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.date :published_on
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
