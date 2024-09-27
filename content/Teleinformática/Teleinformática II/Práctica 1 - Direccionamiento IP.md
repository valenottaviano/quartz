# Práctica 1 - Direccionamiento IP

%%
Date:: [[2024-09-25]]
Course:: [[Teleinformática II]]
Source:: [[Direccionamiento IP]]
%%

## Ejemplo de Subneteo: Red 200.200.100.0 para 6 Subredes

### Pasos para hacer un subneteo:

### 1. Identificar la clase de la dirección IP

La dirección IP es **200.200.100.0**. Para identificar la clase, necesitamos recordar los rangos de direcciones IP:

- **Clase A**: 0.0.0.0 a 127.255.255.255
- **Clase B**: 128.0.0.0 a 191.255.255.255
- **Clase C**: 192.0.0.0 a 223.255.255.255

**200.200.100.0** pertenece a la **Clase C**.

> **Nota:** Es importante memorizar los rangos de las clases para identificarlos rápidamente.

### 2. Verificar la máscara de red por defecto

Para una dirección IP de clase C, la **máscara de red por defecto** es:

- **255.255.255.0** (en formato decimal)
- **11111111.11111111.11111111.00000000** (en formato binario)

Esta máscara divide la red de clase C en una sola subred.

### 3. Calcular el número de bits para las subredes

Para obtener 6 subredes, necesitamos encontrar el número mínimo de bits adicionales para el subneteo. Utilizamos la fórmula:

- **2^n ≥ número de subredes que necesitamos**

En este caso:

- **2^3 = 8** subredes posibles (mayor o igual a 6, que es lo que necesitamos).

Por lo tanto, **n = 3** bits serán necesarios para crear las subredes.

### 4. Modificar la máscara de red

- La máscara original en binario es:  
    **11111111.11111111.11111111.00000000** (para clase C).
    
- Ahora, tomamos **3 bits** adicionales del último octeto para el subneteo, lo que deja la máscara así:  
    **11111111.11111111.11111111.11100000**
    
- Convertimos esta nueva máscara en formato decimal:  
    **255.255.255.224**
    

### 5. Calcular el número de salto entre subredes

Para encontrar el "salto" entre las subredes, utilizamos la siguiente fórmula:

- **Salto = 256 - valor del último octeto en la máscara**  
    **Salto = 256 - 224 = 32**

Por lo tanto, el **número de salto** entre subredes es 32.

### 6. Listar las subredes

Ahora que conocemos el número de salto, podemos calcular los rangos de las subredes:

- **Primera subred**: 200.200.100.0  
    Rango: 200.200.100.0 – 200.200.100.31
- **Segunda subred**: 200.200.100.32  
    Rango: 200.200.100.32 – 200.200.100.63
- **Tercera subred**: 200.200.100.64  
    Rango: 200.200.100.64 – 200.200.100.95
- **Cuarta subred**: 200.200.100.96  
    Rango: 200.200.100.96 – 200.200.100.127
- **Quinta subred**: 200.200.100.128  
    Rango: 200.200.100.128 – 200.200.100.159
- **Sexta subred**: 200.200.100.160  
    Rango: 200.200.100.160 – 200.200.100.191