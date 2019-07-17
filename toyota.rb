class Toyota < Dealer

  def acceleration_in_price
    @acceleration = (@price * 0.01).to_i
  end

end