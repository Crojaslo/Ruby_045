# BUSQUEDA_COLORES

# Usuario ingresa un color hexagecimal
# Mostrar en pantalla el nombre del color
# De no encontrarlo aparaecera el texto de "No encontrado"

colors = {
    "aliceblue": "#f0f8ff",
    "antiquewhite": "#faebd7",
    "aqua": "#00ffff",
    "aquamarine": "#7fffd4",
    "azure": "#f0ffff",
    "darkorchid": "#9932cc",
    "darkred": "#8b0000",
    "darksalmon": "#e9967a",
    "navajowhite": "#ffdead",
    "navy": "#000080",
    "orchid": "#da70d6",
    "palegoldenrod": "#eee8aa",
    "peachpuff": "#ffdab9",
    "peru": "#cd853f",
    "pink": "#ffc0cb",
    "purple": "#800080",
    "rebeccapurple": "#663399",
    "red": "#ff0000",
    "saddlebrown": "#8b4513",
    "seashell": "#fff5ee",
    "sienna": "#a0522d",
    "silver": "#c0c0c0",
    "skyblue": "#87ceeb",
    "slateblue": "#6a5acd",
    "teal": "#008080",
    "thistle": "#d8bfd8",
    "tomato": "#ff6347",
    "turquoise": "#40e0d0",
    "violet": "#ee82ee",
    "wheat": "#f5deb3",
    "white": "#ffffff",
    "whitesmoke": "#f5f5f5",
    "yellow": "#ffff00",
    "yellowgreen": "#9acd32"
}

# ESTE CODIGO IMPRIME TODAS LAS VECES NO ENCONTRADO
# OSEA TODO EL RECORRIDO

=begin              
buscar = '#6a5acd'

colors.each do |k,v|
    if v == buscar
        puts k
    end
end

colors.each do |k,v|
    if v == buscar
        puts k
    else
        puts "No encontrado"
    end
end

puts "---------------------------------------------------"
=end


# ESTE CODIGO RESUME LA BUSQUEDA A UNA SOLA RESPUESTA.

=begin
buscar = '#6a5acd'
encontrado = false

colors.each do |k,v|
    if v == buscar
        encontrado = true
        puts k
    end
end

if encontrado != true
    puts "No encontrado"
=end

#puts "--------------------------------------------------"

=begin
# SIN EL METODO APLICADO
buscar = ARGV[0]
puts()
print buscar.class
#String
=end

# CON EL METODO APLICADO

#buscar = ARGV[0].to_sym
#puts()
#print buscar.class
####Symbol

puts "--------------------------------------------------"

buscar = :antiquewhite
encontrado = false

invertir_hash = colors.invert()

invertir_hash.each do |k,v|  # Imprime #faebd7
    if v == buscar
        encontrado = true
        puts k
    end
end

if encontrado != true
    puts "No encontrado"
end

puts "--------------------------------------------------"

buscar = ARGV[0].to_sym
encontrado = false

invertir_hash = colors.invert()
invertir_hash.each do |k,v|
    if v == buscar
        encontrado = true
        puts k
    end
end
if encontrado != true
    puts "No encontrado"
end

puts "--------------------------------------------------"