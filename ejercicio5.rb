def cuanto_falta? (time=Time.new(Time.now.year, Time.now.month, Time.now.day, 23, 59, 59))
  "Faltan " + (((time - Time.now)/60).round).to_s + " minutos"
end

p cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59))
