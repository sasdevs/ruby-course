t = Thread.new do
  puts "first"
  sleep 1
  puts "second"
end
puts "outside"
t.join
