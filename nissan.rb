class Nissan < Car

  def initialize(maker, price, acceleration)
    super
    @acceleration *= 0.6
  end  

end