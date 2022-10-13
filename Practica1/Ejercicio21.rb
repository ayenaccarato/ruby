def multiplos_de_3_y_5 (num)
  #se puede usar filter o select
  (1..num).filter { |i| i.modulo(3).zero? && i.modulo(5).zero?  }.sum
  #(1..num).select { |i| i.modulo(3).zero? && i.modulo(5).zero?  }.sum
end

puts multiplos_de_3_y_5(100)
