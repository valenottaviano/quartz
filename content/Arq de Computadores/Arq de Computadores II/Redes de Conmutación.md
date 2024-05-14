# Redes de Conmutación

%%
Date:: [[2024-05-11]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Redes de interconexión]]
%%



>[!important] Conmutación
>La Conmutación se considera como la acción de establecer una vía, un camino, de extremo a extremo entre dos puntos, un emisor (Tx) y un receptor (Rx) a través de nodos o equipos de transmisión. La conmutación permite la entrega de la señal desde el origen hasta el destino requerido. 

## Conmutación de circuitos

- En la conmutación de circuitos los equipos de conmutación deben establecer un camino físico entre los medios de comunicación previo a la conexión entre los usuarios. Este camino permanece activo durante la comunicación entre los usuarios, liberándose al terminar la comunicación. Ejemplo: red telefónica conmutada. Su funcionamiento pasa por las siguientes etapas: solicitud, establecimiento, transferencia de datos y liberación de conexión.

![[Pasted image 20240511091915.png]]

### Ventajas
- La transmisión se realiza en tiempo real, siendo adecuado para comunicación de voz y video.
- **Acaparamiento de recursos.** Los nodos que intervienen en la comunicación disponen en exclusiva del circuito establecido mientras dura la sesión.
- **No hay contención.** Una vez que se ha establecido el circuito las partes pueden comunicarse a la máxima velocidad que permita el medio, sin compartir el ancho de banda ni el tiempo de uso.
- **El circuito es fijo.** Dado que se dedica un circuito físico específicamente para esa sesión de comunicación, una vez establecido el circuito no hay pérdidas de tiempo calculando y tomando decisiones de encaminamiento en los nodos intermedios. Cada nodo intermedio tiene una sola ruta para los paquetes entrantes y salientes que pertenecen a una sesión específica.
- **Simplicidad en la gestión de los nodos intermedios.** Una vez que se ha establecido el circuito físico, no hay que tomar más decisiones para encaminar los datos entre el origen y el destino.
### Desventajas

- **Retraso en el inicio de la comunicación.** Se necesita un tiempo para realizar la conexión, lo que conlleva un retraso en la transmisión de la información.
- **Acaparamiento (bloqueo) de recursos.** No se aprovecha el circuito en los instantes de tiempo en que no hay transmisión entre las partes. Se desperdicia ancho de banda mientras las partes no están comunicándose.
- **El circuito es fijo.** No se reajusta la ruta de comunicación, adaptándola en cada posible instante al camino de menor costo entre los nodos. Una vez que se ha establecido el circuito, no se aprovechan los posibles caminos alternativos con menor coste que puedan surgir durante la sesión.
- **Poco tolerante a fallos.** Si un nodo intermedio falla, todo el circuito se viene abajo. Hay que volver a establecer conexiones desde el principio.

## Conmutación de mensajes

Para transmitir un mensaje a un receptor, el emisor debe enviar primero el mensaje completo a un nodo intermedio el cual lo encola en la cola donde almacena los mensajes que le son enviados por otros nodos. Luego, cuando llega su turno, lo reenviará a otro y éste a otro y así las veces que sean necesarias antes de llegar al receptor. El mensaje deberá ser almacenado por completo y de forma temporal en el nodo intermedio antes de poder ser reenviado al siguiente, *por lo que los nodos temporales deben tener una gran capacidad de almacenamiento*. Esto es lo que se llama funcionamiento "almacenar y reenviar" (store and forward).

![[Pasted image 20240511093226.png]]

### Ventajas

- Se multiplexan mensajes de varios procesos hacia un mismo destino, y viceversa, sin que los solicitantes deban esperar a que se libere el circuito.
- El canal se libera mucho antes que en la conmutación de circuitos, lo que reduce el tiempo de espera necesario para que otro remitente envíe mensajes.
- No hay circuitos ocupados que estén inactivos. Mejor aprovechamiento del canal.
- Si hay error de comunicación se retransmite una menor cantidad de datos

### Desventajas

- **Se añade información extra de encaminamiento (cabecera del mensaje) a la comunicación.** Si esta información representa un porcentaje apreciable del tamaño del mensaje el rendimiento del canal (información útil/información transmitida) disminuye.
- **Mayor complejidad en los nodos intermedios**:
	- Ahora necesitan inspeccionar la cabecera de cada mensaje para tomar decisiones de encaminamiento.
	- También deben examinar los datos del mensaje para comprobar que se ha recibido sin errores.
	- También necesitan disponer de memoria (discos duros) y capacidad de procesamiento para almacenar, verificar y retransmitir el mensaje completo.
- **Sigue sin ser viable la comunicación interactiva entre los terminales.**
- Si la capacidad de almacenamiento se llena y llega un nuevo mensaje, no puede ser almacenado y se perderá definitivamente.
- Un mensaje puede acaparar una conexión de un nodo a otro mientras transmite un mensaje, lo que lo incapacita para poder ser usado por otros nodos.
- Es lenta.

## Conmutación de paquetes

El emisor divide los mensajes a enviar en un número arbitrario de paquetes del mismo tamaño, donde adjunta una cabecera y la dirección origen y destino así como datos de control que luego serán transmitidos por diferentes medios de conexión entre nodos temporales hasta llegar a su destino. Este método de conmutación es el que más se utiliza en las redes de ordenadores actuales. 
Al igual que en la conmutación de mensajes, los nodos temporales almacenan los paquetes en colas en sus memorias que no necesitan ser demasiado grandes. 

## Modos de conmutación

- Circuito virtual
	- Cada paquete se encamina por el mismo circuito virtual de los anteriores.
	- Por tanto, se controla y se asegura el orden de llegada de los paquetes a destino.

Existen 2 tipos
1. PVC (*Permanent Virtual Circuit, Circuito Virtual Permanente*): se establece un único camino para todos los envíos.
2. SCV (*Switched Virtual Circuit, Circuito Virtual Conmutado*): se establece un nuevo camino en el siguiente envío.

- Datagrama
	- Cada paquete se encamina de manera independiente de los demás.
	- Por lo tanto, la red no puede controlar el camino seguido por los paquetes, ni asegurar el orden de llegada a destino.
	- Primero se debe enviar el mensaje completo 

### Ventajas 

- Si hay error de comunicación, se retransmite una cantidad de datos aun menor que en el caso de mensajes.
- En caso de error en un paquete, solo se reenvía ese paquete, sin afectar a los demás que llegaron sin error.
- Comunicación interactiva. Al limitar el tamaño máximo del paquete, se asegura que ningún usuario pueda monopolizar una línea de transmisión durante mucho tiempo (microsegundos), por lo que las redes de conmutación de paquetes pueden manejar tráfico interactivo.
- Aumenta la flexibilidad y rentabilidad de la red.
	- Se puede alterar sobre la marcha el camino seguido por una comunicación (por ejemplo, en caso de avería de uno o más enrutadores).
	- Se pueden asignar prioridades a los paquetes de una determinada comunicación. Así, un nodo puede seleccionar, de entre su cola de paquetes en espera de ser transmitidos, aquellos que tienen mayor prioridad
### Desventajas

- **Mayor complejidad en los equipos de conmutación intermedios**, que necesitan mayor velocidad y capacidad de cálculo para determinar la ruta adecuada en cada paquete.
- **Duplicidad de paquetes.** Si un paquete tarda demasiado en llegar a su destino, el host receptor(destino) no enviara el acuse de recibo al emisor, por el cual el host emisor al no recibir un acuse de recibo por parte del receptor este volverá a retransmitir los últimos paquetes del cual no recibió el acuse, pudiendo haber redundancia de datos.
