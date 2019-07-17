class Ferrari < Dealer

  def lift_up
    @car_height += 40
    @speed *= 0.8
  end

  def lift_down
    @car_height -= 40
    @speed /= 0.8
  end

end