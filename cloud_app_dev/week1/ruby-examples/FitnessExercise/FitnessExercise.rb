puts("Welcome to the fitness app")
puts ("What day did you exercise?")
day = gets.chomp.capitalize

puts ("You entered  #{day}")
if day == "Monday"  || day == "Tuesday"  ||  day == "Wednesday"  || day == "Thursday" 
   puts ("The ticket is 10 euros")
elsif day == "Friday"  || day == "Saturday" || day == "Sunday"
    puts ("The ticket is 20 euros")
else puts ("Invalid day entered, Please try again")
end

