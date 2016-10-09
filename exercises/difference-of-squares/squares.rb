class Squares
    attr_reader :input_num
    
    def initialize(input_num)
        @input_num = input_num
        @sumsq = 0
    end
    
    def sum_of_squares
        @sumsq = 0
        for i in 1..@input_num do
            @sumsq = i*i + @sumsq
        end
        puts "sumsq: #{@sumsq}"
         @sumsq
    end
    def square_of_sums
        @sqsum = 0
        sum=0
        for i in 1..@input_num do
            sum += i 
        end
        @sqsum = sum * sum
        puts "sqsum: #{@sqsum}"
         @sqsum
    end
end
        
    