"""
10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.
          Juan,  Mario,  Ariel,  Josefina,  Marianella.
Ordenarla alfabéticamente y mostrarla por pantalla.
"""

# Creación de lista "Clientes"
clientes = ['Juan', 'Mario', 'Ariel', 'Josefina', 'Marianella']

# Proceso de ordenamiento de la lista a traves del metodo SORTED, el cual deja inalterado la lista original (Crea una).
# Tambien podria haberse utilizado el metodo SORT sin embargo este modifica la lista original

clientes_ordenados = sorted(clientes)

# Se muestra por pantalla la nueva lista ordenada alfabeticamente
print(clientes_ordenados)
