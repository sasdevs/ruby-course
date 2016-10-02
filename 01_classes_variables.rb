$this_is_a = 'global variable'

class Customer
  ## class variables
  @@no_of_customers = 0

  def initialize(id, name, addr)
    ## instance variables
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    @@no_of_customers += 1
  end

  def self.customer_count
    @@no_of_customers
  end
end

puts "There were #{Customer.customer_count} customers"

# cust1 and cust2 are local variables
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

puts "Now there are #{Customer.customer_count} customers"


