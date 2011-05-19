class RemoveStageFromActivities < ActiveRecord::Migration
  def self.up
    remove_column :activities, :stage
    # Activity.all.each do |act|
    #   act.update_attributes( :stage_id => 1 )
    # end
  end

  def self.down
    add_column :activities, :stage, :string
  end
end
