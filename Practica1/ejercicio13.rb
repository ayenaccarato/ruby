# Escribí una función llamada listar que reciba un Hash y retorne un String con los pares de
# clave/valor formateados en una lista ordenada en texto plano

def listar(hash)
  hash.map.with_index { |e, i| (i+1).to_s + ". " + e[0].to_s + ": " + e[1].to_s + "\n"}.join
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
