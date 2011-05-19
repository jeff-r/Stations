class Activity < ActiveRecord::Base
  belongs_to :station
  belongs_to :stage

  def date_formatted
    date.strftime "%b %d"
  end

  def start_formatted= str
    start = DateTime.parse str
  end
  def start_formatted
    if running?
      # start.strftime "%I:%M:%S"
      start.strftime "%I:%M"
    else
      ""
    end
  end
  def stop_formatted
    if running?
      stop.strftime "%I:%M:%S"
    else
      ""
    end
  end

  def running?
    not stop.nil?
  end

  def duration_as_string
    if running?
      dur = self.duration / 60
      sprintf("%.2f minutes", dur)
    else
      ""
    end
  end

  def duration
    dur = 0
    if running?
      dur = stop - start
    end
    dur
  end
end
