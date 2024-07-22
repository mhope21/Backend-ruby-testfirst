class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  # calculates the hours minutes and seconds based on @seconds and displays in H:M:S format
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60
    format("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
