class Station < ActiveRecord::Base
  has_many :activities

  def total_duration
    total = 0
    activities.each do |act|
      total += act.duration
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
