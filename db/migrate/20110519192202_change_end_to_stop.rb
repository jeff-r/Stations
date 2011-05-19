class ChangeEndToStop < ActiveRecord::Migration
  def self.up
    remove_column :activities, :end
    add_column    :activities, :stop, :datetime
  end

  def self.down
    remove_column :activities, :stop
    add_column    :activities, :end, :datetime
  end
end
