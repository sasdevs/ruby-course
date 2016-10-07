class Cat
  attr_reader :color

  COLORS = ['Brown', 'Yellow', 'White']

  @@total_count = 0

  def self.total_count
    @@total_count 
  end

  def initialize(color)
    if color_valid?(color)
      @color = color
      @@total_count += 1
    else
      raise "INVALID COLOR"
    end
  end

  def change_color(new_color)
    if color_valid?(new_color) 
      @color = new_color
    else
      false
    end
  end

  def brown?
    @color == "Brown"
  end

  private

  def color_valid?(color)
    COLORS.include?(color)
  end
end

felix = Cat.new("Brown")
#felix.color = "Brown"
puts felix.inspect
puts "Felix is brown: #{felix.brown?}"
