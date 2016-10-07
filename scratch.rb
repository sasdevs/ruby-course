require 'pry'
x = ["cat", "hat", "bat"]
y = x.map do |word|
 word.reverse
end

def z
  "this"
  "or this"
end

class A
  def self.a_method
  end

  def a_method
  end
end

A.a_method
A.new.a_method

VENUES = ['a', 'b', 'c']

class Ticket
  VENUES = ["x", "y", "z"]

  def self.show_venues
    puts VENUES.object_id
    puts ::VENUES.object_id
  end
end

class Object
  def not_a_singleton
    puts 'this isnt a singleton'
  end
end

obj = Object.new
def obj.some_singleton_method
  puts 'this is only on this object'
end

obj.some_singleton_method

obj2 = Object.new
#obj2.some_singleton_method


obj.not_a_singleton
obj2.not_a_singleton


module X
  def ex_method
    puts "inside x"
  end
end

module Y
  def ex_method
    puts "inside y"
  end
end

class B
  include Y
  include X
end
B.new.ex_method
=begin
puts "self is: #{self}"
class B
  puts "self inside class is: #{self}"

  def imethod
    puts "self inside instance method is: #{self}"
  end
end
=end


















