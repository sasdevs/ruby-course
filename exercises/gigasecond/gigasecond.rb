require 'date'
require 'time'

class Gigasecond

  def self.from(init_date)
    x = (init_date.to_time + 10**9 ).to_date
    puts x
    puts "---"
    x
  end
end

