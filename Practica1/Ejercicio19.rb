def notacion_hexadecimal(rgb)
  #{}"#" + rgg.map { |i| "%02h"  }.join.upcase #Mayuscula upcase
  "#" + rgg.map { |i| format("%02x", i)  }.join.upcase

  #rgb.inject("#") {|acc, i| acc+= format("%02X", i)}
end

def notacion_enteros(rgb)
  rgb.map.with_index { |elem, i| elem * 256.pow(i) }.sum


  #rgb.each.with_index.inject(0) {|acc, (elem, i)| acc+= elem * 256.pow(i)}
end
