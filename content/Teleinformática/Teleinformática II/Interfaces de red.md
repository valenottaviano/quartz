# Interfaces de red

%%
Date:: [[2024-09-04]]
Course:: [[Teleinformática II]]
Source:: [[Direccionamiento IP]]
%%

Una **interfaz de red** es el medio físico o virtual que conecta un dispositivo, como una computadora o un servidor, a una red de comunicación. Las interfaces de red permiten que los dispositivos se comuniquen dentro de una red local o a través de internet. Cada interfaz de red tiene una dirección única que la identifica dentro de la red, llamada **MAC address** o dirección MAC.

## Tipos de Interfaces de Red

1. **Interfaz de Red Física:**
    - Se refiere al hardware que conecta físicamente un dispositivo a una red, como una tarjeta de red Ethernet o una tarjeta inalámbrica Wi-Fi.
    - Permite el intercambio de datos a través de cables (como cables Ethernet) o señales inalámbricas (como Wi-Fi).
2. **Interfaz de Red Virtual:**
    - Es una interfaz creada a nivel de software para simular una conexión de red. Se utiliza en redes virtuales o dentro de entornos virtualizados, como máquinas virtuales o contenedores.
    - Ejemplos incluyen los adaptadores loopback o las interfaces en sistemas de virtualización como VMware o Docker.

## MAC Address (Media Access Control Address)

La **dirección MAC** es un identificador único que se asigna a cada interfaz de red física de un dispositivo. Es utilizada en la capa de enlace de datos del modelo OSI (Capa 2) para la comunicación entre dispositivos dentro de la misma red local (LAN). Mientras que las direcciones IP pueden cambiar o ser reasignadas, las direcciones MAC son fijas y están grabadas en el hardware de la interfaz de red.

### Características de la Dirección MAC:

1. **Formato:**
    - Las direcciones MAC tienen 48 bits, representados en 12 dígitos hexadecimales. Se dividen en seis pares, generalmente separados por dos puntos o guiones, por ejemplo: `00:1A:2B:3C:4D:5E`.
2. **Componentes:**
    - Los primeros 24 bits (los primeros tres pares) corresponden al **Identificador Único de Organización (OUI)**, asignado por el Instituto de Ingenieros Eléctricos y Electrónicos (IEEE) al fabricante de la interfaz de red.
    - Los últimos 24 bits son un identificador único asignado por el fabricante al dispositivo específico.
3. **Permanencia:**
    - La dirección MAC es **única** para cada dispositivo y, en teoría, no puede cambiar. Aunque algunos sistemas permiten cambiar la dirección MAC a través de software (proceso conocido como "spoofing" de MAC), en su diseño original, esta dirección es permanente.

## Función de la Dirección MAC en las Redes

- **Comunicación dentro de una LAN:**
    - Cuando un dispositivo quiere comunicarse dentro de una red local (LAN), utiliza la dirección MAC para enviar los datos al dispositivo de destino. En este proceso, los switches de red utilizan las direcciones MAC para reenviar los paquetes al puerto adecuado en la red.
- **ARP (Address Resolution Protocol):**
    - En las redes IP, cuando un dispositivo necesita enviar datos a otro dentro de la misma red, primero necesita conocer la dirección MAC del dispositivo destino. Para hacer esto, utiliza el protocolo ARP, que traduce direcciones IP a direcciones MAC.
- **Colisión y Duplicación de Direcciones MAC:**
    - Aunque las direcciones MAC son únicas, en ocasiones puede haber conflictos si dos dispositivos tienen la misma dirección (por ejemplo, debido a un error de fabricación). Esto puede causar problemas de comunicación en la red, ya que los switches no sabrán a qué dispositivo enviar los datos.

## Diferencia entre Dirección MAC y Dirección IP

- **Dirección MAC:**
    - Funciona a nivel de la **capa de enlace de datos (Capa 2)** del modelo OSI.
    - Es una dirección **física** asignada a la tarjeta de red de un dispositivo y no cambia, a menos que sea modificada manualmente.
    - Se utiliza para la comunicación dentro de una red local.
- **Dirección IP:**
    - Funciona a nivel de la **capa de red (Capa 3)** del modelo OSI.
    - Es una dirección **lógica** que puede cambiar dinámicamente o ser asignada estáticamente a un dispositivo.
    - Se utiliza para la comunicación entre redes a través de internet u otras redes externas.

## Interacción entre MAC e IP

Cuando un dispositivo quiere enviar datos a otro en una red, el proceso general es el siguiente:

1. El dispositivo fuente conoce la dirección IP del dispositivo destino.
2. Utiliza el protocolo ARP para descubrir la dirección MAC correspondiente a esa dirección IP.
3. Una vez que tiene la dirección MAC, el dispositivo fuente puede enviar los datos a través de la red local.

