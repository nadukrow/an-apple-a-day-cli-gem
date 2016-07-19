#CLI Controller responsible for User Interations#
class AnAppleADay::CLI

  def call
    greeting
    list_hospitals
    list_hospitals_by_one
  end

  def greeting
    puts "Welcome to the AnAppleADay gem! Here you can type in 'list' for a full list of hospitals."
  end

  def list_hospitals
    input = gets.strip.downcase
    puts "Hospital Facilities in DC"
    puts "Name - Address - Ward - Phone Num"
    if input == "list"
    @providers = AnAppleADay::Location.list
    @providers.each.with_index(1) do |provider, i|
      puts "#{i} - #{provider.name} - #{provider.address} - #{provider.ward} - #{provider.num}"
    end
  end

  def list_hospitals_by_one
    puts "You can take a look at a specific hospital by typing in its corresponding number."
    input = input.to_i
    while input!= "exit"
      input = gets.strip
      if input.to_i > 0
        provider_selected = @providers[input.to_i-1]
        puts "#{provider_selected.name} - #{provider_selected.address} - #{provider_selected.ward} - #{provider_selected.num}"
      elsif input == "hospitals"
        list_hospitals
      else
        puts "An apple a day keeps the doctor away!"
      end
    end
  end
end
end
