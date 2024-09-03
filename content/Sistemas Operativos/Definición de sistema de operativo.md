# Definición de sistema de operativo

%%
Date:: [[2024-08-30]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

Un sistema operativo (SO) es el software fundamental que permite la operación de una computadora, gestionando y coordinando sus recursos hardware y software. Su función principal es actuar como intermediario entre el usuario y el hardware de la computadora, proporcionando una interfaz amigable y simplificada que oculta la complejidad del hardware.

![[Pasted image 20240830200822.png | 400]]
## Arquitectura de Computadoras y Máquinas por Niveles

La arquitectura de computadoras se basa en el concepto de "máquina por niveles", donde cada nivel de la máquina tiene su propio lenguaje de programación, comenzando con el lenguaje de máquina (nivel más bajo) hasta llegar a lenguajes de alto nivel más cercanos al entendimiento humano.

- **Lenguaje de Máquina (Nivel 1)**: Es el conjunto de instrucciones más elemental que puede ser ejecutado directamente por los circuitos electrónicos de la computadora.
- **Microprogramación (Nivel 2)**: Introduce un programa que interpreta las instrucciones del nivel 1, proporcionando una capa de abstracción sobre el hardware.
- **Máquina del Sistema Operativo (Nivel 3)**: Se agregan instrucciones específicas que permiten la gestión avanzada del hardware, como la multitarea y la administración de memoria.
- **Lenguaje Ensamblador (Nivel 4)**: Nivel dirigido a los programadores de sistemas, donde se utilizan abreviaturas y palabras significativas para los humanos, facilitando la programación en relación con los lenguajes de máquina más elementales.
- **Lenguajes de Alto Nivel (Nivel 5)**: Más orientados a los problemas específicos de los usuarios y más fáciles de usar para los programadores de aplicaciones.

## Funciones del Sistema Operativo

El sistema operativo cumple con dos visiones principales:
1. **Máquina Extendida**: Proporciona al usuario una interfaz simplificada que abstrae la complejidad del hardware. Es decir, transforma el hardware primitivo y complejo en una máquina virtual más accesible y fácil de programar.
2. **Administrador de Recursos**: Gestiona eficientemente los recursos del sistema (procesador, memoria, dispositivos de entrada/salida, etc.) para distribuirlos entre los diferentes programas que se ejecutan, evitando conflictos y optimizando el rendimiento.

## Tipos de Sistemas Operativos

1. **Sistemas por Lotes (Batch Systems)**: Agrupan trabajos similares en lotes y los procesan secuencialmente sin interacción del usuario durante la ejecución.
2. **Sistemas de Tiempo Compartido (Time-Sharing Systems)**: Permiten que múltiples usuarios compartan la computadora simultáneamente, conmutando rápidamente entre diferentes tareas.
3. **Sistemas Distribuidos**: Utilizan varios procesadores conectados entre sí para compartir recursos y realizar cálculos distribuidos, mejorando la confiabilidad y el rendimiento.
4. **Sistemas de Tiempo Real (Real-Time Systems)**: Diseñados para aplicaciones donde los tiempos de respuesta son críticos, como el control de tráfico aéreo o las bolsas de valores.

## Evolución y Componentes del Sistema Operativo

- **Primeros Sistemas**: En los inicios, los programadores operaban las computadoras directamente desde una consola, cargando manualmente los programas en memoria.
- **Desarrollo de Herramientas**: Con el tiempo, se desarrollaron ensambladores, compiladores y dispositivos adicionales que facilitaron la programación y la operación de las computadoras.
- **Multiprogramación y Spooling**: La introducción de la multiprogramación permitió ejecutar varios programas simultáneamente, mejorando el aprovechamiento de la CPU. El spooling, por su parte, optimizó la gestión de dispositivos de entrada/salida, permitiendo que varios trabajos se mantuvieran en cola.

