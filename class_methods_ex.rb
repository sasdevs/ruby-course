class Complement
  class << self
    def of_dna(x)
      puts 'this is a class method'
    end
  end
end

Complement.of_dna('x')

