def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)

  if traffic_signal == :green

    if weather == :sunny
      return speed_limit
    elsif distance_to_signal >= 50
      return speed_limit
    else
      return speed_limit * 0.90
    end

  elsif traffic_signal == :yellow

    if weather == :sunny && distance_to_signal >= 50
      return speed_limit * 0.80
    elsif weather == :sunny && distance_to_signal < 50
      return speed_limit * 0.50
    elsif weather == :rainy && distance_to_signal >= 50
      return speed_limit * 0.80
    elsif weather == :rainy && distance_to_signal < 50
      speed_limit * 0.25
    else
      raise "Condition not handled"
    end

  else traffic_signal == :red

  end

end