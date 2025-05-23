# Elementos constitutivos de hardware

%%
Date:: [[2025-05-22]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%


## ¿Qué es un Servidor?

Un **servidor** es una computadora de alto rendimiento que forma parte de una red y tiene como función principal **proveer servicios a otras computadoras**, conocidas como clientes. Existen tanto servidores a nivel de hardware como a nivel de software:

- **Servidor de hardware:** posee componentes físicos especializados para funcionar de forma continua, soportando cargas elevadas.
- **Servidor de software:** corresponde a procesos o aplicaciones que ofrecen servicios dentro de un sistema operativo.

## Características del Software para Servidores

El software que opera en un servidor debe tener características específicas:

- **Sistema operativo robusto**, capaz de controlar todo el hardware y ofrecer máxima estabilidad.
- **Enfoque en servicios:** el software debe estar optimizado para ejecutar y mantener servicios de red que brinden funcionalidades específicas a otros dispositivos.

## Características del Hardware de un Servidor

Los servidores están diseñados para trabajar de manera **ininterrumpida (24/7/365)** y poseen elementos de **tolerancia a fallos**:

- **Hot plug:** permiten reemplazar o agregar componentes sin necesidad de apagar el equipo.
    
- **No se recomienda utilizar PCs domésticas** como servidores debido a su menor robustez y confiabilidad.
    

## Unidad de Rack (U)

Una **unidad de rack (U)** es la medida estándar para describir la altura del equipamiento en racks de servidores:

- 1U = 1,75 pulgadas (44,45 mm).
- Los racks suelen ser de **42U de altura**, equivalentes a 1,8 metros.
- Equipos comunes: 1U (estándar), 2U (más grandes).

![[Pasted image 20250522202247.png]]
## Consolas y KVM

- **KVM (Keyboard, Video, Mouse):** dispositivo que permite controlar varios servidores desde una sola consola.
- Se puede acceder a múltiples servidores de forma remota mediante **servidores de consola**.
- Algunos modelos modernos permiten conectar también **audio y USB**.
![[Pasted image 20250522202304.png]]
## Formatos Físicos de Servidores

Existen diferentes **formatos físicos** según su tamaño y uso:

- **Rackeables:** se montan en racks, estandarizados en medidas U. ![[Pasted image 20250522203419.png]]
- **Torre (Tower):** similares a una PC grande, sin formato estandarizado.![[Pasted image 20250522203542.png | 300]]
- **Blade:** servidores en forma de tarjetas que se insertan en un chasis común que les proporciona alimentación, ventilación y conexión a red.![[Pasted image 20250522203437.png]]

## Tipos de Servidores: Blade

Los **servidores blade** están diseñados para optimizar el espacio y la gestión:

- No son autónomos: dependen del chasis para funcionar.
- Cada blade es una placa que se inserta verticalmente.
- Adecuados para entornos con altas demandas de procesamiento.

---

## Componentes Internos de un Servidor

### 1. Fuente de Alimentación
![[Pasted image 20250522203650.png]]
- Suministra energía a todos los componentes del servidor.
- Pueden tener **fuentes redundantes** para asegurar tolerancia a fallos.
- Están diseñadas para un funcionamiento continuo, robusto y estable.

### 2. Placa Madre
![[Pasted image 20250522203712.png]]
- No utilizan formatos estándar como ATX o ITX.
- Suelen incluir:
    - Múltiples interfaces de red (mínimo 2).
    - Varios puertos PCIe para expansión.
    - Hardware integrado pero sin placa de audio.
- Muy robustas, pensadas para funcionar sin interrupciones.

### 3. Microprocesador (CPU)

- **Arquitectura:** 32 bits (x86) o 64 bits (x86_64).
- **Núcleos e hilos:** permiten ejecutar tareas en paralelo.
- **Frecuencia de reloj:** determina la velocidad interna del procesador.
- **Memorias caché L1, L2 y L3:** permiten acelerar el acceso a datos.

**Diferencias 32 vs 64 bits:**

|Característica|32 bits|64 bits|
|---|---|---|
|Memoria máxima|4 GB|16 EB|
|Representación numérica|0 – 4.294.967.295|0 – 18 trillones|
|Procesamiento por ciclo|Menor|Mayor|

Hoy en día, **más importante que la frecuencia de reloj es la cantidad de núcleos**, ya que permiten mayor trabajo en paralelo.

### 4. Memoria RAM

- Componente crítico para la ejecución de servicios.
- En servidores, se utilizan memorias con **corrección de errores (ECC)**.
- Diseñadas para rendimiento constante y alta disponibilidad.

### 5. Memoria caché
![[Pasted image 20250522203808.png]]