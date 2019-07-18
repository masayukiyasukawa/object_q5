class Toyota < Car

  def initialize(maker, price)
    super(maker, price, price * 0.011)
  end  

end