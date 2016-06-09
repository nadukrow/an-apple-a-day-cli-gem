#CLI Controller responsible for User Interations#
class AnAppleADay::CLI

  def call
    list_providers
    zip
  end

  def list_providers
    puts "Primary Care Providers in DC"
    puts "Name - Address - City - State - Zip - Ward - Phone Num"
  end

  def zip
    puts "Enter your current zip code"
  end

end
