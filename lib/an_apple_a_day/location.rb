class AnAppleADay::Location
  attr_accessor :name, :address, :zip, :num, :availability, :url

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
    doc = Nokogiri::HTML(open("http://opendata.dc.gov/datasets/018890d7399245759f05c7932261ef44_7?geometry=-77.469%2C38.811%2C-76.546%2C38.971&orderByFields=PrimaryCarePt.OBJECTID+ASC&uiTab=table&filterByExtent=true"))
    binding.pry
  end

end
