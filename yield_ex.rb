=begin
def lots_of_args(z:, name: 'dave', age:)
end

def hash_args(x, y, opts={})
end

hash_args(1, 2, name: 'dave', age: 28)

ar = [1,2,3]
ar[0]

h = {
  'hello there' => 1,
  'whats up' => 2
}

h['hello there']

lots_of_args(age: 28, name: 'dave')
=end

class Array
  def my_each
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
    self
  end
end

def save_the_block(x, &cb)
  cb.call(x, 'var for the block')
end

save_the_block(10) do |num|
  puts num
end








[1,2,3].my_each do |n|
  puts "inside my each: #{n}"
end

puts_stuff = Proc.new do |n|
 puts "inside the proc: #{n}"
end

puts_stuff2 = Proc.new do |n|
 puts "inside the proc (2): #{n}"
end

[4,5,6].my_each(&puts_stuff)

def takes_blocks(b1, b2)
  b1.call(100)
  b2.call(200)
end

takes_blocks(puts_stuff, puts_stuff2)

my_lamb = -> (x) { puts x }
my_lamb_old = lambda { |x| puts x }

my_lamb.call(111)
my_lamb_old.call(222)


af = Proc.new do |x|
  puts 'hello'
  puts x
  x
end


y = af.call(5)
puts y 

class Transform
  attr_reader :cb, :state

  def initialize(str, &cb)
    @str = str
    @cb = cb
    @original_state = str.dup
  end

  def run
    cb.call(@str)
  end

  def run!
    @str = cb.call(@str)
  end

  def has_changed?
    @str == @original_state 
  end

  def state
    @str 
  end
end

t = Transform.new('hello') do |str|
  str.reverse
end
puts t.run
puts t.state

puts t.run!
puts t.state












