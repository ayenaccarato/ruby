# Mejorar la función anterior en una nueva llamada listar_mejorada para que además reciba
# opcionalmente un parámetro llamado pegamento (su valor por defecto debe ser ": ") que sea
# el que utilice para unir los pares de clave/valor.

def listar(hash, pegamento=": ")
  hash.each_with_index { |e, i| puts (i+1).to_s + ". " + e[0].to_s + pegamento.to_s + e[1].to_s + "\n"}
end

p listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })
