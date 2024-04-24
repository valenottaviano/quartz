# Modelos de rendimiento de los sistemas de comunicación

%%
Date:: [[2024-04-19]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Redes de interconexión]]
%%

Los modelos de rendimiento de los sistemas de comunicación entre procesadores son fundamentales para analizar cómo afecta la adición de más elementos de proceso al rendimiento de un sistema. Estos modelos se basan en diferentes perfiles de comunicación y permiten determinar cuándo es más eficiente distribuir tareas entre varios procesadores o concentrarlas en uno solo.

## Modelo básico

En el modelo básico con dos procesadores y comunicación total entre tareas, se busca minimizar el tiempo total de ejecución considerando el tiempo de cálculo y el tiempo de comunicaciones. Se establece que el rendimiento óptimo se logra cuando la relación entre el tiempo de cálculo y el tiempo de comunicaciones es igual a la mitad del número de tareas.

Hipótesis principales
- El tiempo de cálculo puro de cada tarea es *R* unidades de tiempo
- Cada tarea se comunica con cada una de las demás con un coste de tiempo adicional de *C* unidades
$$T=R+C$$
Suponemos que de las $m$ tareas, $k$ se ejecutan en un procesador y $m-k$ en el otro.
$$T=R\max{(k,m-k)}+C(m-k)k$$

Para un arreglo de dos procesadores, si ambos procesadores ejecutan la misma cantidad de tareas: $$T(m/2)=R\dfrac{m}{2}+C\dfrac{m^2}{4}$$
![[Pasted image 20240419155252.png | 300]]

La eficiencia de este modelo está basado en la relación $R/C$
- Cuando $R/C < m/2$ no es eficiente
- Cuando $R/C > m/2$ si es eficiente
## Modelo extendido

![[Pasted image 20240419155952.png]]

En el modelo extendido con N procesadores, se generaliza la ecuación para calcular el tiempo total de ejecución, considerando la distribución de tareas entre los procesadores. Se concluye que el rendimiento óptimo se alcanza cuando la relación entre el tiempo de cálculo y el tiempo de comunicaciones es igual a la mitad del número de tareas, al igual que en el caso de dos procesadores.

![[Pasted image 20240419160058.png]]

## Modelo lineal

El modelo básico es bastante pesimista, por lo que el modelo lineal no considera que la comunicación sea constante.
El tiempo total de ejecución se ve afectado por el número de procesadores. Se destaca que el mejor rendimiento se logra cuando las tareas están distribuidas entre los procesadores de manera uniforme.

$$T=R\max(k_i)+CN$$
Si todos los procesadores ejecutan la misma cantidad de tareas, el tiempo total está dado por: $$T=\dfrac{Rm}{N}+CN$$
Cuál es el número de N donde su relevancia es mínima? $$N=\sqrt{\dfrac{Rm}{C}}$$
## Modelo óptimo 

El modelo óptimo es una reversión del modelo lineal. Se considera la superposición de comunicaciones con el tiempo de cálculo, lo que permite calcular el tiempo total de ejecución de las tareas. Se establece que el número óptimo de procesadores varía inversamente con el número de tareas, lo que puede resultar sorprendente pero se explica por el modelo elegido para el tiempo de comunicaciones.

![[Pasted image 20240419163256.png]]


