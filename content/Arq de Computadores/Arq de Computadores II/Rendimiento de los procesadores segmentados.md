# Rendimiento de los procesadores segmentados

%%
Date:: [[2024-04-05]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Sistemas paralelos]]
%%

El rendimiento de un procesador segmentado se mide en términos de ganancia de velocidad ideal, que se obtiene si el procesador está equilibrado y no se pierden ciclos de reloj. La ganancia de velocidad se calcula mediante la relación entre el tiempo de ejecución de m tareas en un procesador convencional y el tiempo de ejecución de esas mismas m tareas en un procesador segmentado.

En las mejores condiciones, y si el procesador está equilibrado, se puede suponer que el periodo de reloj es el mismo en ambos casos. En este caso, la ganancia de velocidad ideal es:
$$t(1)= nm$$
donde *n* es la cantidad de segmentos y *m* es la cantidad de tareas

$$S(n)_{ideal} = t(1) / t(n) = nm / (n + m - 1)$$

Cuando el número de tareas ejecutadas, m, sea muy grande, la ganancia ideal estacionaria será:

$$S(n)_\infty = n$$

Sin embargo, en la práctica, la ganancia de velocidad real será menor que la ideal debido a las detenciones del cauce, que causan una pérdida de cierto número de ciclos de reloj, y al desequilibrio entre los segmentos, que hace que el ciclo de reloj de la máquina segmentada tenga que ser mayor que el de una máquina equivalente no segmentada[.

La ganancia de velocidad real se calcula como:

$$S(n) = \dfrac{t(1)}{t(n)} = \dfrac{nm}{n + m - 1 + p}$$

Donde *p* es el número medio de ciclos por tarea perdidos por detenciones.

## Desventajas

Las **detenciones de cauce** en un procesador segmentado se refieren a situaciones en las que el flujo normal de instrucciones se ve interrumpido, lo que puede ocurrir por diversos motivos, como conflictos estructurales, dependencias de datos o de control. Estas detenciones pueden provocar la pérdida de ciclos de reloj, lo que afecta negativamente al rendimiento del procesador.

Por otro lado, el **desequilibrio de segmentos** se refiere a la situación en la que los segmentos del procesador no trabajan de manera equitativa, es decir, algunos segmentos pueden estar más ocupados que otros, lo que puede llevar a que el ciclo de reloj de la máquina segmentada sea mayor que el de una máquina equivalente no segmentada. Este desequilibrio puede resultar en una menor eficiencia y productividad del procesador segmentado, ya que no se aprovechan al máximo los recursos disponibles. Ambos aspectos, las detenciones de cauce y el desequilibrio de segmentos, son importantes consideraciones a la hora de evaluar y mejorar el rendimiento de un procesador segmentado.