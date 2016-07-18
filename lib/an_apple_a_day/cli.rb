#CLI Controller responsible for User Interations#
class AnAppleADay::CLI

  def call
    list_hospitals
    ward
    goodbye
  end

  def list_hospitals
    puts "Hospital Facilities in DC"
    puts "Name - Address - Ward - Phone Num"
    @providers = AnAppleADay::Location.today
    @providers.each.with_index(1) do |provider, i|
      puts "#{i} - #{provider.name} - #{provider.address} - #{provider.ward} - #{provider.num}"
    end
  end

  def ward
    input = nil
    puts "Enter your current ward or type exit"
    while input!= "exit"
      input = gets.strip
      if input.to_i > 0
        puts @providers[input.to_i-1]
      case input
      when input == "hospitals"
        list_hospitals
      end
    end
  end

  def goodbye
      puts "An apple a day keeps the doctor away!"
    end
  end
end
