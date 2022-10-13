def string_reverso(string)
  # string_reverso: retorna el string con los caracteres en orden inverso.
  string.reverse
end

def string_sin_espacio(string)
  # • string_sin_espacio: elimina los espacios en blanco que contenga.
  string.delete(' ')
end

def string_a_arreglo_ascii (string)
  # • string_a_arreglo_ascii: retorna un arreglo con cada uno de los caracteres converti‑
  # dos a su correspondiente valor ASCII.
  string.bytes

  #Como hacerlo con hash? para que quede clave valor
end

def string_remplaza_vocal (string)
  # • string_remplaza_vocal: cambia las vocales por números:
  # – "a" o "A" por "4", replace("").to_i
  # – "e" o "E" por "3",
  # – "i" o "I" por "1",
  # – "o" u "O" por "0",
  # – y "u" o "U" por "6".
  # array = string.split(//)
  # array.map { |chr|
  #   case chr
  #   when "a" or "A"
  #     chr.replace("4").to_i
  #   when "e" or "E"
  #     chr.replace("3").to_i
  #   when "i" or "I"
  #     chr.replace("1").to_i
  #   when "o" or "O"
  #     chr.replace("0").to_i
  #   else "u" or "U"
  #     chr.replace("6").to_i
  #   end
  # }

  string.gsub(/a/, '4').gsub(/A/, '4').gsub(/e/, '3').gsub(/E/, '3')
  .gsub(/i/, '1').gsub(/I/, '1').gsub(/o/, '0').gsub(/O/, '0').gsub(/u/, '6').gsub(/U/, '6')
end

p string_reverso("hola")
p string_sin_espacio(" a ver si funciona")
p string_a_arreglo_ascii("hola")
p string_remplaza_vocal("hola como esta")
