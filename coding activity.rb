class Car
  attr_accessor :brand, :maxspeed, :currentspeed

  def initialize(brand: 'unknown', maxspeed: 0)
    @brand         = brand
    @maxspeed     = maxspeed
    @currentspeed = 0
  end

  def drive
    while self.currentspeed < self.maxspeed
	accelerate
    end
    if self.currentspeed == self.maxspeed
	message
    end
  end 

  def accelerate
    @currentspeed += 1
  end

  def message
    puts "You have reached cars max speed #{maxspeed}"
  end

end

class Camaro < Car
  def initialize
    super(brand: 'Chevy', maxspeed: 200)
  end
end
a = Camaro.new
puts a.inspect
puts a.drive