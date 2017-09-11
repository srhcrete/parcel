class Parcel
  def initialize (length, width, height, weight, distance, speed)
    @length = length.to_f
    @width = width.to_f
    @height = height.to_f
    @weight = weight.to_f
    @distance = distance.to_i
    @speed = speed.to_i
  end

  def base_cost
    volume = @length * @width * @height
    base_cost = 0
    if volume < 8
      base_cost = 5 + @weight * 0.5
    elsif volume > 8
      base_cost = 5 + (volume * 0.5) + (@weight * 0.5)
    end
  end

  def additional_fees
    additional_fees = @speed + @distance
  end

  def total_cost
    total = (base_cost + additional_fees)
    total.to_f
  end
end
