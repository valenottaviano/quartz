# Procesadores segmentados

%%
Date:: [[2024-04-05]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Sistemas paralelos]]
%%

Los procesadores segmentados, también conocidos como procesadores encauzados o cauces, son una técnica de implementación que busca desarrollar el paralelismo a nivel intrainstrucción. Esta estrategia permite solapar la ejecución de múltiples instrucciones al dividir la tarea total en subtareas que se procesan de forma simultánea. Cada etapa de la segmentación, o segmento, completa una parte de la tarea, y los segmentos están conectados en serie, formando un cauce por el cual se procesa la tarea deseada. La principal ventaja de la segmentación es la capacidad de iniciar una nueva tarea antes de que la anterior haya finalizado, lo que optimiza el rendimiento al permitir un flujo continuo de tareas.

![[Pasted image 20240405163328.png]]

Para evaluar la eficacia de un procesador segmentado, se considera el tiempo máximo que puede pasar entre la finalización de dos tareas consecutivas, en lugar del tiempo total transcurrido desde el inicio de una tarea hasta su finalización. La profundidad de la segmentación, representada por el número de segmentos, es crucial para minimizar el tiempo de latencia del procesador. Es fundamental que todas las subtareas tarden en procesarse en un tiempo equilibrado para evitar que los segmentos más rápidos esperen a los más lentos, lo que afectaría el rendimiento del procesador.

Además, se clasifican los procesadores segmentados en **monofunción y multifunción**. 
- Los primeros realizan una función fija, 
- mientras que los segundos pueden ejecutar diferentes funciones conectando los segmentos de manera variable. 
Los procesadores segmentados multifunción pueden ser estáticamente configurables, sin cambios durante la ejecución, o dinámicamente configurables, permitiendo cambios en cualquier momento. Esta flexibilidad les permite adaptarse a diversas tareas y optimizar el rendimiento global del procesador.


## Profundidad de la segmentación
La profundidad de la segmentación en un procesador segmentado se refiere al número de segmentos o etapas en el procesador, cada uno de los cuales completa una parte de la tarea total. La profundidad de la segmentación es importante porque afecta al tiempo de latencia del procesador. Un procesador segmentado con una profundidad de segmentación mayor puede iniciar una nueva tarea antes, lo que permite un flujo continuo de tareas y optimiza el rendimiento del procesador.

Sin embargo, para que el procesador segmentado sea eficiente, es importante que todas las subtareas en que se ha dividido la tarea total tarden en procesarse el mismo tiempo. Si el procesador no está equilibrado, los segmentos más rápidos estarán cierto tiempo sin hacer trabajo alguno, lo que disminuirá el rendimiento del procesador.

La profundidad de la segmentación también afecta a la relación de precedencia de un conjunto de subtareas, que especifica para cada subtarea cuáles deben completarse antes de que pueda comenzar. En procesadores segmentados lineales, una subtarea no puede comenzar hasta que todas las subtareas previas hayan finalizado. En procesadores segmentados con grafo de precedencia no lineal, algunas de las subtareas pueden ejecutarse varias veces para procesar la tarea total, lo que implica que alguna de las etapas puede utilizarse varias veces, provocando una realimentación dentro del cauce.

El rendimiento de los procesadores segmentados se puede estudiar mediante la ganancia de velocidad ideal, que se obtiene si el procesador está equilibrado y no se pierden ciclos de reloj. La ganancia de velocidad en un procesador segmentado de n segmentos vendrá dada por la relación entre el tiempo de ejecución de m tareas en un procesador convencional y el tiempo de ejecución de esas mismas m tareas en un procesador segmentado.
