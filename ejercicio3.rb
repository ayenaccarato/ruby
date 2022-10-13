def ordenar(*args)
  args.sort.flatten
end



entrada = [10, 9, 1, 2, 3, 5, 7, 8]

p ordenar(*entrada)

#module_function :metodo, lo incluye como privado a una clase que llama al modulo
# con .send llamo a los metodos privados clase.new.send :metodo
# modulo::otroModulo -> los doble : hace que me permita referenciar a lo que esta del lado derecho
# ::clase -> invoca a la clase que esta fuera del modulo declarado
