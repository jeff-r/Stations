class Station < ActiveRecord::Base
  has_many :activities

  def total_duration
    puts "total_duration 1"
    total = 0
    activities.each do |act|
      puts "total_duration 2"
      puts "act: #{act.inspect}"
      total += act.duration
      puts "total_duration 3"
    end
    total /= 60
    sprintf( "%.2f minutes", total )
  end

  def next_stage_id
    if activities.length == 0
      Stage.first.id
    else
      num_stages = Stage.all.length
      new_id     = activities.last.stage_id + 1

      if new_id  > num_stages
        new_id = Stage.first.id
      end
      new_id
    end
  end
end
