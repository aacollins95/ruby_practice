class Timer
  attr_reader :seconds
  def initialize
    @seconds = 0;
  end

  def seconds=(s)
    @seconds = s
  end

  def time_string
    hms = [@seconds/3600,(@seconds / 60) % 60,@seconds % 60]
    time = []
    hms.each do |t|
      time.push(t.to_s.rjust(2, "0"))
    end
    return time.join(":")
  end

end
