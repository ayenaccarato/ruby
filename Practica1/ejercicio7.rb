def contar(string, pal)
  string.downcase.scan(pal).size
end

p contar("La casa de la esquina tiene la puerta roja y la ventana blanca
.", "la")
