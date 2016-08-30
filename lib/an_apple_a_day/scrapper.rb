require_relative "./location.rb"

class AnAppleADay::Scrapper

   def self.grab_site_contents
     doc = Nokogiri::HTML(open("http://doh.dc.gov/node/173192"))
     each_hospital = [[0,1,2,4], [6,7,8,10], [12,13,14,16], [18,19,20,22], [24,25,26,28], [30,31,32,34], [36,37,38,40], [42,43,44,46], [48,49,50,52], [54,55,56,58], [60,61,62,64], [66,67,68,70], [72,73,74,76]]
     each_hospital.each do |array|
     AnAppleADay::Location.new({
         name: doc.search("td")[array[0]].text.gsub!(/[\t\n]/, ''),
         address: doc.search("td")[array[1]].text.gsub!(/[\t\n]/, ''),
         ward: doc.search("td")[array[2]].text.gsub!(/[\t\n]/, ''),
         num: doc.search("td")[array[3]].text.gsub!(/[\t\n]/, '')
       })
     end
   end
end
