class Hamming 

  def self.compute(dna1, dna2) 
    dna1_arr = dna1.split("")
    dna2_arr = dna2.split("")
    
    dna1_len = dna1_arr.size
    dna2_len = dna2_arr.size

    @diff = 0
    dna1_arr.each_index do |i|
puts i
      if dna1_arr[i] != dna2_arr[i] then @diff += 1
      end
    end
    @diff
  end  
end
