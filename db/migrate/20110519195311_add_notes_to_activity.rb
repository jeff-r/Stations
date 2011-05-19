class AddNotesToActivity < ActiveRecord::Migration
  def self.up
    add_column :activities, :notes, :string
  end

  def self.down
    remove_column :activities, :notes
  end
end
