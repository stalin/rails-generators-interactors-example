class AddHdfcCustomColumnsToPost  < ActiveRecord::Migration<%= migration_version %>
  def self.up
    add_column :core_posts, :location, :string
  end

  def self.down
    remove_column :core_posts, :location, :string
  end
end
