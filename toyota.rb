class Toyota < Car

  def acceleration_in_price
    @acceleration = (@price * 0.011).to_i
  end

end