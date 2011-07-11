class CreateFbPages < ActiveRecord::Migration
  def self.up
    create_table :fb_pages do |t|
      t.string :name
      t.text :access_token
      t.text :url
      t.timestamps
    end
  end

  def self.down
    drop_table :fb_pages
  end
end
