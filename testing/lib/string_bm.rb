require 'benchmark'

n = 200_000
s1 = ""
s2 = ""
s3 = ""

Benchmark.bm do |rep|
  rep.report("str << ") { n.times { s1 << "x" } }
  rep.report("str.insert ") { n.times { s3.insert(-1,"x") } }
  rep.report("str += ") { n.times { s2 += "x" } }
end
