class Ticket
  puts 'creating your class'
  attr_accessor(:price, :venue)
end

t = Ticket.new
puts t.inspect
t.price = 1500
puts t.inspect
puts t.price
puts "the venue is : #{ t.venue}"
