def contar(string, pal)
  array = string.split
  array.select { |e| e.downcase==pal.downcase  }.size
  #downcase pasa a minuscula
  #upcase pasa a mayuscula
end

p contar("La casa de la esquina tiene la puerta roja y la ventana blanca
.", "la")
