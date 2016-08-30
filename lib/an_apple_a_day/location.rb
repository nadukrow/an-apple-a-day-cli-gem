class AnAppleADay::Location

attr_accessor :name, :address, :ward, :num

@@all = []

 def initialize(attributes = {})
   @name = attributes[:name]
   @address = attributes[:address]
   @ward = attributes[:ward]
   @num = attributes[:num]
   @@all << self
 end

 # def save
 #   @@all << self
 # end

 def self.all
   @@all
 end

end
