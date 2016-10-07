
require 'socket'
s = TCPServer.new(3939)
while (conn = s.accept)
  puts 'inside while'
  Thread.new(conn) do |c|
    puts 'insdie thead'
    c.print "Hi. What's your name? "
    name = c.gets.chomp
    c.puts "Hi, #{name}. Here's the date."
    c.puts `date`
    c.close
  end
end
