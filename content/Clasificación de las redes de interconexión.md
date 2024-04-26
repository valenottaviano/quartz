# Clasificación de las redes de interconexión

%%
Date:: [[2024-04-26]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Redes de interconexión]]
%%


Las redes de interconexión pueden clasificarse en estáticas y dinámicas, dependiendo de cómo se establecen las conexiones entre los nodos.

## Redes de interconexión estáticas

En las redes estáticas, las conexiones entre los nodos son fijas y predefinidas, lo que significa que la topología de la red no cambia durante la operación del sistema. Por otro lado, en las redes dinámicas, las conexiones entre los nodos pueden cambiar a lo largo del tiempo, lo que permite una mayor flexibilidad en la comunicación y adaptación a diferentes cargas de trabajo.

Las redes de interconexión estáticas **suelen ser más simples y eficientes en términos de latencia y consumo de recursos, ya que no requieren reconfiguración durante la operación.** Ejemplos de redes estáticas incluyen las topologías en malla, árbol, anillo y toro. Estas redes son adecuadas para sistemas con requisitos de comunicación predecibles y estables.

- Generalmente son jerárquicas
	- Dispuesta en niveles, las cuales poseen nodos en disposición simétricas.

## Redes de interconexión dinámicas

Por otro lado, las redes de interconexión dinámicas, como las redes de conmutación de paquetes, permiten una mayor flexibilidad al establecer conexiones según la demanda de comunicación. Esto las hace ideales para entornos donde las cargas de trabajo varían dinámicamente y se requiere una adaptación continua de la red. Las redes dinámicas pueden ser más complejas de diseñar y gestionar, pero ofrecen una mayor capacidad de escalabilidad y eficiencia en entornos cambiantes.

- Pueden variar su topología durante el transcurso de ejecución de algún proceso.

