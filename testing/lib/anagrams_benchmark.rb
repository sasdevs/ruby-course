require 'benchmark'

file = "/usr/share/dict/words"
result = Benchmark.measure { File.readlines(file) }

puts result
