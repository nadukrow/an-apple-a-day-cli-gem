class AnAppleADay::Location

  attr_accessor :name, :address, :ward, :num

  @@all = []

  def initialize(name, address, ward, num)
    @@all << self
  end

  def self.all
    @@all
  end

end
