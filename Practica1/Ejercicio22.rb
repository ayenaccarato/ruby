def multiplos_de(array, num)
  #array.map { |e| (1..num).select { |i| i.modulo(e).zero?  }  }.flatten.sum
  #all? { |e|  } map { |e|  }
  (1..num).select { |i| array.map { |e| i.modulo(e).zero?}.all?}.sum
end

puts multiplos_de ([3, 5, 17, 28, 65], 100_000)
