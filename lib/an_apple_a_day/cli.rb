class AnAppleADay::CLI

 def call
   greeting
   ask_for_input
   list_hospitals
   list_hospitals_by_one
 end

 def greeting
   puts "Welcome to the AnAppleADay gem! Here you can type in 'list' for a full list of hospitals."
 end

 def ask_for_input
   input = gets.strip
   while input.downcase != "exit"
     if input.downcase == 'list'
       list_hospitals
       puts "You can take a look at a specific hospital by typing in its corressponding number. After you can type exit to leave the gem."
       input = gets.strip
     elsif input.to_i > 0
       list_hospitals_by_one(input)
       puts "Would you like to see more hospital selections? Type list if so, type exit to exit."
       input = gets.strip
    end
    puts "An Apple a day keeps the doctor away! See you next time!"
end





 def list_hospitals
   input = gets.strip
   puts "Hospital Facilities in DC"
   puts "Name - Address - Ward - Phone Num"
   if input.downcase == "list"
     AnAppleADay::Scrapper.grab_site_contents
     AnAppleADay::Location.all.each.with_index(1) do |provider, i|
       puts "#{i} - #{provider.name} - #{provider.address} - #{provider.ward} - #{provider.num}"
   end
 end


 # list hospital

 def list_hospitals_by_one(input)
  #  puts "You can take a look at a specific hospital by typing in its corressponding number. After you can type exit to leave the gem."
  #  input = input.to_i
  #  while input != "exit"
  #    input = gets.strip
  #    if input.to_i > 0
       provider_selected = AnAppleADay::Location.all[input.to_i-1]
       puts "#{provider_selected.name} - #{provider_selected.address} - #{provider_selected.ward} - #{provider_selected.num}"


    #  elsif input == "list
    #    list_hospitals
    #  else
    #    puts "An Apple a day keeps the doctor away! See you next time!"
    #  end
  #  end
 end
end
end
end
