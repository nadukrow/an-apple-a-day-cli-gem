class AnAppleADay::Scrapper

    attr_accessor :name, :address, :ward, :num,

    def self.list
      # Return a bunch of listings for locations based on ward #
      #puts
      #1. Hospital, Address, Ward, Num
      #2. Hospital, same as above
      #end

      #Scrape Primary Care Center Listings DC website
      self.scrape_providers
    end

    def self.scrape_providers
      providers = [] #set up an empty array
      providers << self.childrens #shovel the empty array with new values given by the self.scrape_primary_care_centers method
      providers << self.gwuh #shovel into the array the GWU hospital information
      providers << self.hospfsc
      providers << self.howarduh
      providers << self.medstar
      providers << self.medstarnat
      providers << self.medstarwash
      providers << self.providence
      providers << self.psychints
      providers << self.sibley
      providers << self.bridgepoint
      providers << self.steliza
      providers << self.unitedmed
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

    def self.medstarnat
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[30].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[31].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[32].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[34].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.medstarwash
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[36].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[37].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[38].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[40].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.providence
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[42].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[43].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[44].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[46].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.psychints
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[48].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[49].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[50].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[52].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.sibley
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[54].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[55].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[56].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[58].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.bridgepoint
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[60].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[61].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[62].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[64].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.steliza
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[66].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[67].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[68].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[70].text.gsub!(/[\t\n]/, '')
      provider
    end

    def self.unitedmed
      doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
      provider = self.new
      provider.name = doc.search("td")[72].text.gsub!(/[\t\n]/, '')
      provider.address = doc.search("td")[73].text.gsub!(/[\t\n]/, '')
      provider.ward = doc.search("td")[74].text.gsub!(/[\t\n]/, '')
      provider.num = doc.search("td")[76].text.gsub!(/[\t\n]/, '')
      provider
    end
  end
