class AnAppleADay::Location
  attr_accessor :name, :address, :ward, :num,

  def self.today
    # Return a bunch of listings for locations based on ward #
    #puts
    #1. Unity, Address, Ward, Num
    #2. Metro Healthcare, same as above
    #end

    #Scrape Primary Care Center Listings DC website
    self.scrape_providers
  end

  def self.scrape_providers
    providers = [] #set up an empty array
    providers << self.childrens #shovel the empty array with new values given by the self.scrape_primary_care_centers method
    providers << self.gwuh #shovel into the array the GWU hospital information
    providers << self.hospfsc
    providers <<self.howarduh
    providers <<self.medstar
    providers #present the values
  end

  def self.childrens
    #Children's National Medical Center
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    provider = self.new
    provider.name = doc.search("td")[0].text.gsub!(/[\t\n]/, '')
    provider.address = doc.search("td")[1].text.gsub!(/[\t\n]/, '')
    provider.ward = doc.search("td")[2].text.gsub!(/[\t\n]/, '')
    provider.num = doc.search("td")[4].text.gsub!(/[\t\n]/, '')
    provider
  end

  def self.gwuh
    #George Washington University Hospital
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    provider = self.new
    provider.name = doc.search("td")[6].text.gsub!(/[\t\n]/, '')
    provider.address = doc.search("td")[7].text.gsub!(/[\t\n]/, '')
    provider.ward = doc.search("td")[8].text.gsub!(/[\t\n]/, '')
    provider.num = doc.search("td")[10].text.gsub!(/[\t\n]/, '')
    provider
  end

  def self.hospfsc
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    provider = self.new
    provider.name = doc.search("td")[12].text.gsub!(/[\t\n]/, '')
    provider.address = doc.search("td")[13].text.gsub!(/[\t\n]/, '')
    provider.ward = doc.search("td")[14].text.gsub!(/[\t\n]/, '')
    provider.num = doc.search("td")[16].text.gsub!(/[\t\n]/, '')
    provider
  end

  def self.howarduh
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    provider = self.new
    provider.name = doc.search("td")[18].text.gsub!(/[\t\n]/, '')
    provider.address = doc.search("td")[19].text.gsub!(/[\t\n]/, '')
    provider.ward = doc.search("td")[20].text.gsub!(/[\t\n]/, '')
    provider.num = doc.search("td")[22].text.gsub!(/[\t\n]/, '')
    provider
  end

  def self.medstar
    doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
    provider = self.new
    provider.name = doc.search("td")[24].text.gsub!(/[\t\n]/, '')
    provider.address = doc.search("td")[25].text.gsub!(/[\t\n]/, '')
    provider.ward = doc.search("td")[26].text.gsub!(/[\t\n]/, '')
    provider.num = doc.search("td")[28].text.gsub!(/[\t\n]/, '')
    provider
  end

end
