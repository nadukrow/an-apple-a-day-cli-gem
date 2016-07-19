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
    @providers = AnAppleADay::Location.list
    @providers.each.with_index(1) do |provider, i|
      puts "#{i} - #{provider.name} - #{provider.address} - #{provider.ward} - #{provider.num}"
    end
  end

  def ward
    input = nil
    puts "You can either enter your DC ward number for the closest hospital, type 'hospital for the full list of hospitals within DC' or type 'exit' to leave."
    while input!= "exit"
      input = gets.strip
      if input.to_i > 0
        provider_selected = @providers[input.to_i-1]
        puts "#{provider.name} - #{provider.address} - #{provider.ward} - #{provider.num}"
      elsif input == "hospitals"
        list_hospitals
      else
        puts "These aren't the droids you're looking for, type a DC ward number, 'hospitals' or 'exit'."
      end
    end
  end

  def goodbye
      puts "An apple a day keeps the doctor away!"
    end
  end
