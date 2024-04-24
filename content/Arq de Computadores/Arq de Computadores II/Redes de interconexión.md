# Redes de interconexión

%%
Date:: [[2024-04-19]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[]]
%%

https://seo.unsta.edu.ar/pluginfile.php/116997/mod_folder/content/0/Temas%203%20y%204/Capitulo%204%20Redes%20de%20interconexion.pdf?forcedownload=1


Las redes de interconexión son fundamentales en sistemas con múltiples procesadores, ya que permiten la comunicación entre ellos. Existen dos enfoques principales para esta comunicación: 
- la **memoria compartida**, donde los procesadores acceden a un mismo recurso para intercambiar información,
- y el **paso de mensajes**, donde se envían copias de información entre procesadores. 
Estos métodos se utilizan en sistemas multiprocesadores y multicomputadores respectivamente, aunque a nivel de programación pueden ser enmascarados.

El rendimiento de los sistemas de comunicación entre procesadores se ve afectado por la adición de más elementos de proceso, ya que se deben considerar tanto los beneficios del procesamiento paralelo como la sobrecarga de las comunicaciones. Modelos matemáticos como el de dos procesadores con comunicación total entre tareas permiten analizar el tiempo de ejecución en función de cómo se distribuyen las tareas entre los procesadores. Se busca minimizar el tiempo total de ejecución, lo que lleva a determinar cuándo es más eficiente concentrar las tareas en un solo procesador o distribuirlas entre varios.

Además, se estudian características clave de las redes de interconexión, como el grado de los nodos, el diámetro de la red, el ancho de bisección, la latencia, la productividad, la escalabilidad, la simetría, la conectividad y la reordenabilidad. Estos aspectos son fundamentales para diseñar redes eficientes que permitan una comunicación óptima entre los nodos.

