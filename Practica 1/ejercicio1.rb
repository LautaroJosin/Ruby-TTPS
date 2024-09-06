# Creación de Simbolo

simbolo1 = :my_symbol

# Creación de String

string1 = "Hello, world!"   # Usando comillas dobles
string2 = 'Ruby'       # Usando comillas simples
string3 = String.new("Patata!")

# Creación de Array

array1 = [1, 2, 3, "Ruby", :symbol]
empty_array = Array.new            # Crea un array vacío
array_with_size = Array.new(3)     # Crea un array con 3 elementos `nil`
array_with_default_value = Array.new(3, "default")  # Array con 3 elementos "default"


# Creación de Hash

my_hash = { "name" => "Alice", age: 25, :city => "New York" }
empty_hash = Hash.new                # Crea un hash vacío
hash_with_default = Hash.new("pepe")  # Crea un hash con un valor predeterminado


puts 'A continuación se muestran con formato String todos los objetos creados :'

puts 'Simbolo :'
puts "\n"
p simbolo1
puts "\n"

puts 'Strings :'
puts "\n"
p string1
p string2
p string3
puts "\n"

puts 'Arrays :'
puts "\n"
p array1
p empty_array
p array_with_size
p array_with_default_value
puts "\n"

puts 'Hashes: '
puts "\n"
p my_hash
p empty_hash
p hash_with_default
puts "\n"