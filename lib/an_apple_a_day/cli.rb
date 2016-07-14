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
    @providers = AnAppleADay::locations.today
  end

  def zip
    puts "Enter your current zip code or type exit"
    input = nil
    while input!= "exit"
      input = gets.strip
      case input
      when "20001"
        puts "Unity Healthcare"
        puts "Bread for the City"
        puts "So Others Might Eat"
        puts "Providence Hospital"
        puts "Howard University Hospital"
        puts "Children National Health System"
      end
    end
  end

  def goodbye
    puts "An apple a day keeps the doctor away!"
  end


end
