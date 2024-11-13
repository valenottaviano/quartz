# Procesos Interbloqueados o Abrazo Mortal

%%
Date:: [[2024-11-08]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

El **abrazo mortal** o **interbloqueo** en procesos es una situación en sistemas multiprogramados en la cual varios procesos quedan bloqueados esperando recursos que están asignados a otros procesos. Esto ocurre cuando se cumplen ciertas condiciones simultáneamente, provocando que ninguno de los procesos pueda avanzar. A continuación, se explica el concepto y cómo prevenirlo:

### Condiciones para el Abrazo Mortal
Para que ocurra un abrazo mortal deben cumplirse las siguientes cuatro condiciones de manera simultánea:
1. **Exclusión mutua:** Los recursos involucrados no pueden ser compartidos entre procesos al mismo tiempo.
2. **Posesión y espera:** Un proceso que tiene asignado al menos un recurso está a la espera de otros recursos que están ocupados por otros procesos.
3. **No apropiación:** Los recursos sólo pueden liberarse voluntariamente por el proceso que los posee.
4. **Espera circular:** Existe una cadena cerrada de procesos en la que cada proceso está esperando un recurso asignado al siguiente proceso en la cadena.
### Prevención del Abrazo Mortal
Para evitar que se den estas condiciones, se aplican diferentes métodos de prevención, tales como:
- **Posesión y espera:** A los procesos se les asignan todos los recursos que requieren al inicio, o se les permite solicitar recursos solo si no poseen ninguno.
- **No apropiación:** Si un proceso solicita un recurso que no está disponible, se le quitan todos los recursos que posee y debe reiniciar su solicitud.
- **Espera circular:** Asignar un orden a los recursos y requerir que los procesos los soliciten en ese orden, previniendo ciclos en las solicitudes.

### Algoritmo de Detección
Se usa un **grafo de asignación de recursos** donde los nodos representan procesos y recursos, y las flechas muestran asignación o petición de recursos. Un ciclo en este grafo puede indicar un abrazo mortal. Alternativamente, el **algoritmo del banquero** ayuda a decidir si las solicitudes de recursos mantienen al sistema en un estado seguro.

### Recuperación
Cuando el sistema identifica un abrazo mortal, puede:
- **Abortar procesos** involucrados en el ciclo, preferiblemente aquellos cuya terminación tiene menor impacto.
- **Apropiación de recursos**: Liberar recursos tomándolos de ciertos procesos, según su prioridad o tiempo de ejecución.

### Criterios de Selección de Víctimas
Para decidir qué proceso detener en caso de interbloqueo, se pueden considerar:
- La prioridad del proceso.
- El tiempo que lleva en ejecución.
- La cantidad de recursos que ha usado y necesita.