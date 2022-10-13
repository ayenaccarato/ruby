def tiempo_en_palabras(time)

  case time.min
  when 0..10
    if (time.hour != 1)
      puts ("Son las " + time.hour.to_s + " en punto")
    else
      puts ("Es la " + time.hour.to_s + " en punto")
    end
  when 11..20
    if (time.hour != 1)
      puts "Son las " + time.hour.to_s + " y cuarto"
    else
      puts "Son la " + time.hour.to_s + " y cuarto"
    end
  when 21..34
    if (time.hour != 1)
      puts "Son las " + time.hour.to_s + " y media"
    else
      puts "Son la " + time.hour.to_s + " y media"
    end
  when 35..44
    if (time.hour == 0)
      puts "Son la " + (time.hour+1).to_s + " menos veinticinco"
    else
      puts "Son las " + (time.hour+1).to_s + " menos veinticinco"
    end
  when 45..55
    if (time.hour == 0)
      puts "Son la " + (time.hour+1).to_s + " menos cuarto"
    else
      puts "Son las " + (time.hour+1).to_s + " menos cuarto"
    end
  when 56..59
    if (time.hour == 0)
      puts "Casi son la " + (time.hour+1).to_s
    else
      puts "Casi son las " + (time.hour+1).to_s
    end
  end
end
