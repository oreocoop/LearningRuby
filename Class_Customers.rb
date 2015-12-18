#Here I create a Customer class and then define a method called "initialize". The initialize method has three local variables: id, name, and addr. The values of these variables are passed to the instance variables: @cust_id, @cust_name, and @cust_addr.
class Customer
    @@no_of_customers=0
    def initialize(id, name, addr)
        @cust_id=id
        @cust_name=name
        @cust_addr=addr
    end
    
#Here I define a display_details method and print out a string that will pass the instance variable values into the string. You need a hash (#) in order to display the text AND the value of the instance variable.    
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end
    
#Here I define a total_no_of_customers method and pass in the number of customers. The expression += 1 adds one to the variable total_no_of_customers every time the method total_no_of_customers is called.
    def total_no_of_customers()
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
    end
end

#Here I create two new objects of the Customer class and pass the parameters with the new method. These objects below call the initialize method 
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Paul", "New Empire Road, Khandla")
cust3 = Customer.new("4", "Coop", "Millstone Road")

#Here is where I call the methods created above. Once the objects are created, the methods need to be called.
cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()
cust3.display_details()
cust3.total_no_of_customers()