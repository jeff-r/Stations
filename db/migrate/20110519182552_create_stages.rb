class CreateStages < ActiveRecord::Migration
  def self.up
    create_table :stages do |t|
      t.string :name
      t.timestamps
    end

    Stage.create( :name => 'Wait' )
    Stage.create( :name => 'Setup' )
    Stage.create( :name => 'Run' )
    Stage.create( :name => 'Cleanup' )
  end

  def self.down
    drop_table :stages
  end
end
