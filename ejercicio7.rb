module Reverso

  def di_tcejbo
    object_id.to_s.reverse
  end

  def ssalc
    self.class.to_s.reverse
  end
end

class Documento

  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end
end

class Usuario
  include Reverso
  attr_accessor :name, :email, :clave

  def initialize (name, email, clave)
    self.name = name
    self.email = email
    self.clave = clave

  end

  def puede_ver?(doc)
    true
  end

  def puede_modificar?(doc)
    false
  end

  def puede_borrar?(doc)
    false
  end

  def to_s

  end


end

class Lector < Usuario

  def puede_ver?(doc)
    doc.publico
  end

  def leer_documento(doc)
    if doc.puede_ser_visto_por?(self)
      "leo documento"
    end
  end
  def to_s
    self.name + " (Lector)"
  end
end

class Redactor < Lector

  def puede_modificar?(doc)
    doc.creador == self
  end

  def modificar_contenido(doc)
    if doc.puede_ser_visto_por?(self) && doc.puede_ser_modificado_por?(self)
      doc.contenido="cambia redactor"
    end
  end

  def to_s
    self.name + " (Redactor)"
  end
end

class Director < Usuario

  def puede_modificar?(doc)
    !doc.borrado
  end

  def cambiar_doc(doc)
    if doc.puede_ser_modificado_por?(self)
      doc.contenido="cambia director"
    end
  end

  def to_s
    self.name + " (Director)"
  end
end

class Administrador < Director

  def puede_borrar?(doc)
    !doc.borrado
  end

  def borrar_documento(doc)
    if doc.puede_ser_borrado_por?(self)
      doc.borrar
    end
  end

  def to_s
    self.name + " (Administrador)"
  end
end

usuario = Lector.new("Aye", "aa", "123")
us_r = Redactor.new("belo", "aa", "123")
us_d = Director.new("jj", "aa", "123")
us_a = Administrador.new("dde", "aa", "123")
doc = Documento.new(usuario)

puts "Puede ver? " + doc.puede_ser_visto_por?(usuario).to_s
puts "Puede borrar? " + doc.puede_ser_borrado_por?(us_d).to_s


puts usuario.leer_documento(doc)
puts us_r.modificar_contenido(doc)
puts us_d.cambiar_doc(doc)
puts us_a.borrar_documento(doc)
puts usuario.to_s
puts us_r.to_s
puts us_d.to_s
puts us_a.to_s

puts usuario.object_id
puts usuario.di_tcejbo
puts usuario.class
puts usuario.ssalc
