# Normas a nivel físico y de enlace

%%
Date:: [[2024-05-13]]
Course:: [[Teleinformática I]]
Source:: [[]]
%%


  
La capa de enlace de datos es la segunda capa del modelo OSI y se encarga de la comunicación entre dispositivos adyacentes en una red local (LAN). Esta capa divide la información recibida de la capa de red en tramas de datos, que son unidades de información más pequeñas y manejables. La capa de enlace también controla cómo estos datos se colocan y recuperan de los medios físicos de transmisión, como cables o ondas de radio.

La capa de enlace de datos se subdivide a su vez en dos subcapas: la Capa de Control de Enlace Lógico (LLC) y la Capa de Acceso al Medio (MAC).

1. **Capa de Control de Enlace Lógico (LLC)**: La LLC es responsable de la multiplexación, control de flujo y corrección de errores. Se encarga de establecer, mantener y finalizar la conexión lógica entre dos dispositivos finales a través de un medio de transmisión compartido. La LLC también maneja el direccionamiento de tramas y la detección de errores en las transmisiones.
2. **Capa de Acceso al Medio (MAC)**: La MAC se encarga del acceso al medio físico y del direccionamiento físico de los dispositivos en la red. Define cómo se accede al medio de transmisión compartido y cómo se evitan las colisiones cuando varios dispositivos intentan transmitir datos simultáneamente. Cada dispositivo conectado a la red tiene una dirección MAC única, que se utiliza para identificarlo en la red.

## Dirección MAC

Una dirección MAC (Media Access Control) es un identificador único asignado a una tarjeta de interfaz de red (NIC) para comunicaciones en una red de computadoras. La dirección MAC está compuesta por 6 bytes (48 bits) y suele representarse en formato hexadecimal, como por ejemplo `00:1A:2B:3C:4D:5E`. 

Cada fabricante de dispositivos de red tiene asignado un rango de direcciones MAC únicas, lo que significa que, teóricamente, no debería haber dos dispositivos con la misma dirección MAC en una red. La dirección MAC se utiliza en la capa de enlace de datos (capa 2 del modelo OSI) para identificar de manera única un dispositivo en una red local. 

Es importante tener en cuenta que la dirección MAC es diferente de la dirección IP, que se utiliza en la capa de red (capa 3 del modelo OSI) para identificar un dispositivo en una red más amplia, como Internet.

## Encontrando la dirección MAC

En una red cerrada (sin router), encontrar la dirección MAC de un host Z desde un host Y se puede hacer de la siguiente manera:

1. **ARP (Address Resolution Protocol)**: El host Y enviaría un paquete ARP de solicitud broadcast a todos los hosts en la red local, preguntando por la dirección MAC del host Z. Cuando el host Z recibe esta solicitud, responde con un paquete ARP de respuesta que contiene su dirección MAC.

2. **Tabla ARP local**: Si el host Y ya ha establecido una comunicación previa con el host Z, es posible que tenga la dirección MAC de Z almacenada en su tabla ARP local. En este caso, no sería necesario enviar una solicitud ARP broadcast.

En una red con un router, el proceso sería similar, pero con una capa adicional de complejidad debido a la presencia del router:

1. **ARP local**: El host Y buscaría en su tabla ARP local la dirección MAC del router, ya que todos los paquetes destinados a hosts fuera de la red local se enviarían primero al router.

2. **ARP en la red local**: Una vez que el paquete llega al router, este se encargaría de encontrar la dirección MAC del host Z en su red local, utilizando un proceso similar al descrito anteriormente. El router actuaría como intermediario, reenviando la respuesta del host Z al host Y.

## Capas del modelo OSI

![[Pasted image 20240513181718.png]]

**Capa 1 - Capa Física:**
- Función Principal: La capa física se encarga de la transmisión de bits a través de un medio de comunicación físico.
- Responsabilidades: Define las características eléctricas, mecánicas, funcionales y procedimentales del medio de transmisión.
- Ejemplos de Componentes: Cables, conectores, hubs.

**Capa 2 - Capa de Enlace de Datos:**
- Función Principal: La capa de enlace de datos se encarga de la transferencia fiable de datos a través de un enlace físico.
- Responsabilidades: Control de acceso al medio, detección y corrección de errores a nivel de enlace, y direccionamiento físico.
- Ejemplos de Protocolos: Ethernet, Wi-Fi, Frame Relay.

**Capa 3 - Capa de Red:**
- Función Principal: La capa de red se encarga de establecer, mantener y terminar conexiones entre sistemas finales.
- Responsabilidades: Encaminamiento de paquetes entre redes, control de congestión y enrutamiento.
- Ejemplos de Protocolos: IP (Internet Protocol), ICMP (Internet Control Message Protocol).

**Capa 4 - Capa de Transporte:**
- Función Principal: La capa de transporte proporciona comunicación de extremo a extremo, asegurando que los datos se entreguen de manera fiable y en orden.
- Responsabilidades: Segmentación y reensamblaje de datos, control de flujo, control de errores y multiplexación/demultiplexación de aplicaciones.
- Ejemplos de Protocolos: TCP (Transmission Control Protocol), UDP (User Datagram Protocol).

**Capa 5 - Capa de Sesión:**
- Función Principal: La capa de sesión establece, gestiona y finaliza las conexiones entre aplicaciones.
- Responsabilidades: Sincronización, control de diálogo y manejo de errores de sesión.
- Ejemplos de Funciones: Autenticación, autorización, negociación de sesión.

**Capa 6 - Capa de Presentación:**
- Función Principal: La capa de presentación se encarga de la representación de los datos, asegurando que sean legibles por el receptor.
- Responsabilidades: Traducción, compresión, cifrado y conversión de formatos de datos.
- Ejemplos de Funciones: Conversión de ASCII a EBCDIC, compresión de datos.

**Capa 7 - Capa de Aplicación:**
- Función Principal: La capa de aplicación proporciona interfaces de red a las aplicaciones y servicios.
- Responsabilidades: Interacción con aplicaciones, transferencia de datos y presentación al usuario.
- Ejemplos de Protocolos: HTTP, FTP, SMTP.

