historial2 = (23500, 5960, 2300, 10200, 8900)

consultas =  sum(historial2)

print("La sumatoria de los gastos de Frida es:" , consultas)

def gastos():
 n = [p for p, v in enumerate(historial2) if v > 5000] # [4, 7]
 contador = 1
 for nombre in n:
    contador += 1
    print(historial2[nombre], )

print("Los gastos mayores a 5000 son:")
gastos()