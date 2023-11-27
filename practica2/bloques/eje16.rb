=begin
Implementá un método que reciba como parámetros un Hash y un Proc, y que devuelva un
nuevo Hash cuyas claves sean los valores del Hash recibido como parámetro, y cuyos valores
sean el resultado de invocar el Proc con cada clave del Hash original. Por ejemplo:
hash = { 'clave' => 1, :otra_clave => 'valor' }
procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
=end

def procesar_hash (hash, proc)
    h = Hash.new
    hash.each do |key, value|
       h[value]= proc.call(key)
    end
    puts h
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }