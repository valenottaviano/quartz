# Subredes y máscaras de subred

%%
Date:: [[2024-09-11]]
Course:: [[Teleinformática II]]
Source:: [[]]
%%

Una **subred** es una subdivisión lógica de una red IP más grande. Las subredes permiten segmentar una red grande en redes más pequeñas, facilitando la organización, administración y seguridad del tráfico de red. Cada subred tiene su propio rango de direcciones IP.

La **máscara de subred** es una serie de bits que, combinada con una dirección IP, ayuda a identificar qué parte de la dirección pertenece a la red y qué parte identifica a los dispositivos dentro de esa subred.

## Función de las subredes:

- **Segmentación**: Dividen una red grande en segmentos más pequeños para mejorar el rendimiento y facilitar la gestión.
- **Seguridad**: Permiten aplicar políticas de seguridad más específicas entre segmentos de red.
- **Eficiencia**: Reducen el tráfico innecesario, ya que el tráfico entre subredes se puede controlar o restringir.
- **Escalabilidad**: Permiten dividir una red en partes manejables a medida que crece.

## Máscara de subred:

La máscara de subred es un conjunto de 32 bits que se utiliza para determinar qué parte de la dirección IP corresponde a la red y cuál al host (el dispositivo dentro de la red).

- **Parte de red**: Indica el identificador de la red a la que pertenece la dirección IP.
- **Parte de host**: Es la porción que identifica a los dispositivos dentro de esa subred.

### Ejemplo de una dirección IP y máscara de subred:

- **Dirección IP**: 192.168.1.10
- **Máscara de subred**: 255.255.255.0 (o también notación CIDR como /24)

En este caso:

- Los primeros **24 bits** (255.255.255) son la parte de red, y el último octeto (0) es la parte de host. Esto significa que hay espacio para 256 direcciones de host (de 192.168.1.0 a 192.168.1.255, donde .0 es la red y .255 es el broadcast).

## Conceptos clave:

- **Dirección de red**: Es la dirección que representa la subred en sí. En el ejemplo anterior, sería 192.168.1.0.
- **Broadcast**: Es la dirección que permite enviar mensajes a todos los dispositivos dentro de la subred. Para la subred anterior, el broadcast es 192.168.1.255.
- **Host**: Son los dispositivos dentro de la subred que pueden comunicarse utilizando direcciones IP únicas.

## Clases de IP y subredes:

En las redes IPv4, las direcciones IP se agrupan en clases, cada una con un rango de subredes predefinido. Las tres clases más comunes son:

- **Clase A**: Soporta redes muy grandes. Ejemplo: 10.0.0.0 con máscara 255.0.0.0 (/8).
- **Clase B**: Soporta redes medianas. Ejemplo: 172.16.0.0 con máscara 255.255.0.0 (/16).
- **Clase C**: Soporta redes pequeñas. Ejemplo: 192.168.1.0 con máscara 255.255.255.0 (/24).

## Beneficios del uso de subredes:

- **Organización**: Facilita la segmentación de una red grande en unidades lógicas más pequeñas (por ejemplo, separar departamentos en una empresa).
- **Reducción de tráfico**: Al dividir la red en subredes, el tráfico dentro de cada subred es independiente y se reduce la congestión general.
- **Mejor rendimiento**: Las subredes pueden mejorar el rendimiento de la red, ya que limitan el tráfico que debe atravesar toda la red.

## Ejemplo práctico:

Imagina una empresa que tiene una red de clase C (192.168.1.0/24) con 256 direcciones IP posibles. Si se quiere separar esta red en dos subredes para distintos departamentos, se puede usar una máscara de subred 255.255.255.128 (/25), lo que crearía dos subredes:

- Subred 1: 192.168.1.0 - 192.168.1.127
- Subred 2: 192.168.1.128 - 192.168.1.255

Cada una de estas subredes tendría 126 direcciones disponibles para hosts, ya que las direcciones de red y broadcast no pueden asignarse a dispositivos.
