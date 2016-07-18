class AnAppleADay::Location
  attr_accessor :name, :address, :ward, :num,

  def self.today
    # Return a bunch of listings for locations based on zip code
    #puts
    #1. Unity, Address, Zip, Num, availability, url
    #2. Metro Healthcare, same as above
    #end

    #Scrape Primary Care Center Listings DC website
    self.scrape_providers
  end

  def scrape_providers
    providers = []

    providers << self.scrape_primary_care_centers

    providers
  end

  def self.scrape_primary_care_centers
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    name = doc.search("td")[0].text.gsub!(/[\t\n]/, '')
    binding.pry
  end

end
