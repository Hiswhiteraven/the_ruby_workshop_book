<<EOC
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

  if weather == :sunny && distance_to_signal >= 50
    return speed_limit * 0.50
  elsif weather == :rainy && distance_to_signal >= 50
    return speed_limit * 0.25
  else
    0
  end

  end

end
EOC

def drive_decision_when_green(weather, distance_to_signal, speed_limit)

  case weather
  when :sunny
    return speed_limit
  when :rainy
    if distance_to_signal >= 50
      return speed_limit
    else
      return speed_limit * 0.90
    end
  else
    raise "Not handled"
  end

end

def drive_decision_when_yellow(weather, distance_to_signal, speed_limit)

  case weather
  when :sunny
    if distance_to_signal >= 50
      return speed_limit * 0.80
    else
      return speed_limit * 0.50
    end
  when :rainy
    if distance_to_signal >= 50
      return speed_limit
    else
      return speed_limit * 0.90
    end
  else
    raise "Not handled"
  end

end

def drive_decision_when_red(weather, distance_to_signal, speed_limit)

  if distance_to_signal >= 50
    case weather
    when :sunny
      speed_limit * 0.50
    when :rainy
      speed_limit * 0.25
    else
      raise "Not handled"
    end
  else
    return 0
  end

end

def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)

  case traffic_signal
  when :green
    drive_decision_when_green(weather, distance_to_signal, speed_limit)
  when :yellow
    drive_decision_when_yellow(weather, distance_to_signal, speed_limit)
  else
    drive_decision_when_red(weather, distance_to_signal, speed_limit)
  end

end

p drive_decision(:yellow, :sunny, 25, 35)
p drive_decision(:red, :rainy, 25, 35)
p drive_decision(:green, :rainy, 25, 35)
p drive_decision(:green, :sunny, 25, 35)