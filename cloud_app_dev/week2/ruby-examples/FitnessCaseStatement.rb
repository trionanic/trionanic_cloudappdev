puts("Welcome to the fitness app")
puts ("What day did you exercise?")
day = gets.chomp.capitalize

puts ("You entered  #{day}")

#using case statement
case day
   when "Monday" , "Tuesday", "Wednesday", "Thursday" 
	    puts ("The ticket is 10 euros")
		
	when "Friday" , "Saturday", "Sunday" 
		puts ("The ticket is 12 euros")
		
	else puts("Invalid day entered, Please try again")
	
end







