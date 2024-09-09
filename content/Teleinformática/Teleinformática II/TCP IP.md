# TCP IP

%%
Date:: [[2024-09-04]]
Course:: [[Teleinformática II]]
Source:: [[Direccionamiento IP]]
%%


El **modelo TCP/IP (Transmission Control Protocol/Internet Protocol)** es un conjunto de protocolos de comunicación que permiten la transmisión de datos en redes. Es la base sobre la cual funciona internet y la mayoría de las redes privadas. Fue desarrollado en los años 70 para permitir la interconexión de diferentes tipos de redes.

## Capas del Modelo TCP/IP

TCP/IP se organiza en cuatro capas, cada una con funciones específicas en el proceso de comunicación.

1. **Capa de Acceso a la Red (Network Interface Layer):**
    - Se encarga de gestionar la comunicación entre el hardware de red y el software, permitiendo que los datos pasen de una red física a otra.
    - Incluye tecnologías como Ethernet, Wi-Fi, y la interfaz con los dispositivos físicos.
2. **Capa de Internet (Internet Layer):**
    - Su función principal es el **direccionamiento** y el **enrutamiento** de paquetes de datos entre redes. En esta capa trabaja el **Protocolo IP**, encargado de dividir los datos en paquetes y asignar direcciones IP para dirigir los paquetes hacia su destino.
    - Los protocolos más importantes de esta capa son:
        - **IP (Internet Protocol):** Asigna direcciones IP y se asegura de que los paquetes lleguen al destino correcto.
        - **ICMP (Internet Control Message Protocol):** Se utiliza para enviar mensajes de control e información de errores, como las respuestas a comandos `ping`.
        - **ARP (Address Resolution Protocol):** Permite la traducción de direcciones IP en direcciones MAC, necesarias para la comunicación dentro de redes locales.
3. **Capa de Transporte (Transport Layer):**
    - Esta capa garantiza la **entrega confiable** de los datos entre el origen y el destino, manejando la segmentación de datos y la corrección de errores.
    - Los dos protocolos clave en esta capa son:
        - **TCP (Transmission Control Protocol):** Protocolo orientado a conexión, que asegura que los datos lleguen de manera completa y en el orden correcto. Utiliza técnicas como el establecimiento de una conexión previa al envío de datos (tres vías de "handshake"), el control de flujo y la retransmisión de paquetes en caso de pérdida.
        - **UDP (User Datagram Protocol):** Protocolo no orientado a conexión, más rápido que TCP, pero sin garantías de entrega. Es utilizado en aplicaciones donde la velocidad es más importante que la precisión, como el streaming de video o las llamadas VoIP.
4. **Capa de Aplicación (Application Layer):**
    - Proporciona una **interfaz** para las aplicaciones y define los protocolos utilizados por programas que requieren comunicación en red.
    - Algunos de los protocolos más conocidos son:
        - **HTTP (Hypertext Transfer Protocol):** Protocolo utilizado para la transmisión de páginas web.
        - **FTP (File Transfer Protocol):** Utilizado para la transferencia de archivos.
        - **SMTP (Simple Mail Transfer Protocol):** Usado para enviar correos electrónicos.
        - **DNS (Domain Name System):** Permite la traducción de nombres de dominio en direcciones IP.

## Funcionamiento General de TCP/IP

1. **Fragmentación y ensamblaje:** Los datos se dividen en pequeños paquetes en la capa de transporte para facilitar su transmisión.
2. **Encapsulación:** Cada paquete recibe información de control en cada capa del modelo TCP/IP. Por ejemplo, en la capa de transporte, el protocolo TCP agrega un encabezado que contiene información para gestionar la retransmisión y la verificación de errores.
3. **Transmisión:** Los paquetes viajan a través de la red, utilizando las direcciones IP para navegar por diferentes routers y redes.
4. **Reensamblaje:** En el destino, los paquetes se reensamblan y se presentan a la aplicación en el orden correcto (si se utiliza TCP).

## Ventajas del Modelo TCP/IP

- **Interoperabilidad:** Permite que dispositivos y redes muy diferentes entre sí puedan comunicarse de manera eficiente.
- **Escalabilidad:** TCP/IP es capaz de soportar grandes redes, como internet, y permite un crecimiento continuo sin problemas.
- **Fiabilidad:** El protocolo TCP asegura que los datos se entreguen de manera precisa y sin errores, lo que es fundamental para aplicaciones críticas.

