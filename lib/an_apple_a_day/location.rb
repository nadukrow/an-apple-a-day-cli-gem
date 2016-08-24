class AnAppleADay::Location
  attr_accessor :name, :address, :ward, :num

  def initialize(name, address, ward, num)
    @name = name
    @address = address
    @ward = ward
    @num = num
  end

end
