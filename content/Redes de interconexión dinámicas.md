# Redes de interconexión dinámicas

%%
Date:: [[2024-04-26]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Redes de interconexión]]
%%

	
Las redes de interconexión dinámicas se caracterizan por la capacidad de cambiar las conexiones entre los nodos a lo largo del tiempo, lo que les otorga flexibilidad para adaptarse a diferentes cargas de trabajo y requisitos de comunicación. 

## Elementos de las redes de interconexión dinámicas

### Redes de líneas cruzadas
En estas redes, los nodos se conectan a través de una matriz de conmutadores que permiten establecer conexiones punto a punto de manera dinámica. Algunas propiedades:

- Permiten conexiones directas entre cualquier par de nodos.
- Escalabilidad limitada, ya que el número de conmutadores crece cuadráticamente con el número de nodos.
- Latencia baja, al evitar pasar por nodos intermedios.
- Flexibilidad para reconfigurar las conexiones según la demanda.

### Redes multietapa
Estas redes utilizan una estructura jerárquica de conmutadores para interconectar los nodos. Cada etapa de conmutación permite establecer rutas entre los nodos de manera dinámica. Algunas características:

- Mejor escalabilidad que las redes de líneas cruzadas.
- Latencia variable, dependiendo de la ruta seguida a través de las etapas.
- Permiten reconfiguración dinámica de las conexiones.
- Ejemplos: redes Omega, redes Banyan, redes Clos.

## Principales topologías de las redes dinámicas

### Redes de conmutación de paquetes
En estas redes, los datos se dividen en paquetes que se envían de un nodo a otro a través de conmutadores. Cada paquete puede seguir rutas diferentes hacia su destino, lo que permite una distribución eficiente del tráfico y una adaptación dinámica a las condiciones de la red.

### Redes de interconexión basadas en árboles
Estas redes utilizan una estructura jerárquica en forma de árbol para conectar los nodos. Cada nodo tiene un nodo padre y uno o más nodos hijos, lo que facilita la transmisión de información de manera eficiente y escalable. Las redes jerárquicas son comunes en sistemas distribuidos y centros de datos.

### Redes de interconexión en malla dinámica
En este tipo de red, los nodos están conectados de manera flexible, permitiendo la reconfiguración de las conexiones según las necesidades de comunicación. Esto brinda la posibilidad de optimizar la ruta de comunicación y adaptarse a cambios en la carga de trabajo de forma dinámica.

### Redes de interconexión basadas en hipercubos
Los hipercubos son redes de interconexión n-dimensionales que se utilizan en sistemas paralelos y distribuidos. Su estructura permite una comunicación eficiente entre nodos, con rutas cortas y predecibles. En entornos dinámicos, la capacidad de reconfigurar los enlaces de un hipercubo puede mejorar la eficiencia de la comunicación.

