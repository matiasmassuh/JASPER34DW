def menor(tupla):
    min = tupla[0];
    for x in tupla:
        if x < min:
            min = x
    return min



Historial4=(7510, 7960, 76180, 800, 4100)
valor=menor(Historial4)
print("El minimo de atencion gastada en Olivia es", valor)