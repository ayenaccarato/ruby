module Countable

  def contar
    @contar ||= Hash.new(0)
  end
  
  def self.included(clase)
    clase.extend Contar
  end

  module Contar

    def count_invocations_of(sym)
      alias_method "#{sym}_original", sym
      define_method(sym) do
        contar[sym] += 1
        send "#{sym}_original"
      end
    end
  end

  def invoked?(sym)
    contar[sym] > 0
  end

  def invoked(sym)
    contar[sym]
  end
end

class Greeter
  include Countable # Incluyo el Mixin
  def hi
    puts 'Hey!'
  end
  def bye
    puts 'See you!'
  end
  # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
  count_invocations_of :hi
end
a = Greeter.new
b = Greeter.new

puts a.invoked? :hi
# => false
puts b.invoked? :hi
# => false
a.hi
# Imprime "Hey!"
puts a.invoked :hi
# => 1
puts b.invoked :hi
