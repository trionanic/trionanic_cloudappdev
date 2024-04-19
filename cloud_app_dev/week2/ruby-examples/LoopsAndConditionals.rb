puts("Welcome to the loopy app")
puts ("How many times do you want to loop?")
# get the users input , trim off the carraige return, convert to integer
loopCounter = gets.chomp.to_i
puts("OK I will loop #{loopCounter} times")

for i in 1..loopCounter 
   # testing code
   # puts (i) 

   # initialise two parts of the message to be blank   
   message1 = ""
   message2 = ""
   
   if i % 7 ==0 then
      # testing code
      # puts (" #{i} is divisible by 7")
	  message1 = "Hello"
	  end
	  
   if i % 9 == 0 then 
      # testing code
      # puts ("#{i} is divisble by 9" )
	   message2 = "World"  
       end
   # concatentate the two parts of the message in the output  
   
   # testing code - always  print something
   # puts (" #{i} #{message1}  #{message2}")
   
    # only print if there is something in the message
   if !(message1 == "") || !(message2 == "") then
  
      puts (message1 + message2)
   end
   
end
