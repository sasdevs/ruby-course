require 'pry'
class Complement

  def self.of_dna(input_value)
    @longstr = []

    @longstr = input_value.split("")

    @a = @longstr.map { |dnachar| dna_complement(dnachar) }.join("")
    puts @a
@a

  end

  def self.dna_complement(input_value)
    case input_value
      when "C"
	"G"
      when "G"
	"C"
      when "T"
	"A"
      when "A"
	"U"
     end
   end
      

end
