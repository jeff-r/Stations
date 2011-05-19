class CreateStations < ActiveRecord::Migration
  def self.up
    create_table :stations do |t|
      t.string :name

      t.timestamps
    end

    Station.create( :name => 'Etching' )
    Station.create( :name => 'Soldering' )
    Station.create( :name => 'Cutting' )
    Station.create( :name => 'Gluing' )
  end

  def self.down
    drop_table :stations
  end
end
