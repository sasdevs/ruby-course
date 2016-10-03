words = File.readlines("/usr/share/dict/words")
words.map! {|x| x.chomp }
hash = {}

words.each do |word|
  key = word.split("").sort.join
  hash[key] ||= []
  hash[key] << word
end

sizes = hash.values.map {|v| v.size }
most = sizes.max
list = hash.find_all {|k,v| v.size == most }
puts "No word has more than #{most-1} anagrams."

list.each do |key,val|
  anagrams = val.sort
  first = anagrams.shift
  puts "The word #{first} has #{most-1} anagrams:"
  anagrams.each {|a| puts " #{a}" }
end

num = 0
hash.keys.each do |key|
  n = hash[key].size
  num += n if n > 1
end

puts
puts "The dictionary has #{words.size} words,"
puts "of which #{num} have anagrams."
