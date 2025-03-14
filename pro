# Función para verificar si un número es primo
def es_primo(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

# Lista para almacenar los primeros 10 números primos
numeros_primos = []
numero = 2  # Empezamos con el primer número primo

# Buscamos los primeros 10 números primos
while len(numeros_primos) < 10:
    if es_primo(numero):
        numeros_primos.append(numero)
    numero += 1

# Multiplicar los primeros 10 números primos
producto_primos = 1
for primo in numeros_primos:
    producto_primos *= primo

# Encontrar el número par más cercano al producto
if producto_primos % 2 == 0:
    numero_par_mas_cercano = producto_primos
else:
    numero_par_mas_cercano = producto_primos + 1

# Multiplicar el producto de los primos por el número par más cercano
resultado = producto_primos * numero_par_mas_cercano

# Mostrar el resultado
print("Los primeros 10 números primos son:", numeros_primos)
print("Producto de los primeros 10 números primos:", producto_primos)
print("Número par más cercano:", numero_par_mas_cercano)
print("Resultado final:", resultado)
