# #Simbols
# :symbol.object_id
#
# #String
# string = 'hola'
# string = String.new()

1.
	Symbol
		:var
		:sym
	String
		s = “hola”
		s = String::new('hola')
	Array
		a = [1,2,3,'b', [0,2]]
		a = Array.new(1,2,3,'b' , [0,2])
	Hash
		h = { 'foo' : 0, 'bar' : 1}
		h = Hash[ 'foo' : 0, 'bar' : 1]
		h = Hash.new --> h = [ ]

2.
	i = 1
	i.to_s

3.
	i = "1"
	i.to_sym

4.
	devuelve False porque cada string es un objeto diferente, por lo tanto van a tener distinto id

10.
El método:
[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
"TTPS Ruby".send(meth)
end
devuelve ["TTPS RUBY", "ttps ruby", "Ttps ruby", "ttps rUBY"]

Método send: send() is used to pass message to object. send() is an instance method of the Object class. The first argument in send() is the message that you're sending to the object - that is, the name of a method. It could be string or symbol but symbols are preferred. Then arguments those need to pass in method, those will be the remaining arguments in send().

11.
No se en qué casos usar cada uno xd
public_send
