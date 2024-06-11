
def calculateTicketPrice ( inDay )

	case inDay
	   when "Monday" , "Tuesday", "Wednesday", "Thursday" 
			return 10
			
		when "Friday" , "Saturday", "Sunday" 
			return 12 
			
		else return 0
	end	
	
end

puts("Welcome to the functional fitness app")
puts ("What day did you exercise?")
day = gets.chomp.capitalize

puts ("You entered  #{day}")

#call the function
   price = calculateTicketPrice(day)
   if price == 0  
      puts "Invalid day entered. Please try again"
   else 
      puts "Ticket price is "  + price.to_s
	end

