#CLI Controller responsible for User Interations#
class AnAppleADay::CLI

  def call
    list_providers
    zip
    goodbye
  end

  def list_providers
    puts "Primary Care Providers in DC"
    puts "Name - Address - Zip - Phone Num"
    @providers = AnAppleADay::Location.today
    @providers.each.with_index(1) do |location, i|
      puts "#{i}. #{location.name} - #{location.address}"
    end
  end

  def zip
    puts "Enter your current zip code or type goodbye"
    input = nil
    while input!= "exit"
      input = gets.strip.to_i
      if input.to_i > 1999
        puts @providers[input.to_i-1]
      elsif input == "providers"
        list_providers
      else
        puts "Unsure of what you're looking for. Please type providers or goodbye."
      end
    end
  end

  def goodbye
    puts "An apple a day keeps the doctor away!"
  end
end
