class A
  attr_accessor :x

  def initialize(x)
    puts "first"
    @x = x
  end

  def initialize
    puts "second"
  end

  def x=(x)
    @x = x
  end

  def set_x(new_x)
    x = new_x
  end
end

a = A.new(1)
a.x = 1
