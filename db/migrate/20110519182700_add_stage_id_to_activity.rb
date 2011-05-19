class AddStageIdToActivity < ActiveRecord::Migration
  def self.up
    add_column :activities, :stage_id, :integer
  end

  def self.down
    remove_column :activities, :stage_id
  end
end
