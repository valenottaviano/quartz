# Direccionamiento IP

%%
Date:: [[2024-09-04]]
Course:: [[Teleinformática II]]
Source:: [[]]
%%

El **direccionamiento IP** es una parte fundamental en el funcionamiento de las redes de computadoras. Sirve para identificar de manera única a cada dispositivo conectado a una red y permite que estos se comuniquen entre sí, similar a cómo una dirección postal guía el envío de una carta a su destino. En el entorno digital, las direcciones IP son vitales para actividades como la navegación web, el correo electrónico, la transferencia de archivos y las videollamadas.

## Protocolo IPv4 vs IPv6

- **IPv4** (Protocolo de Internet versión 4) ha sido el estándar dominante durante décadas. Utiliza direcciones de 32 bits, lo que permite un número limitado de direcciones (aproximadamente 4.3 mil millones), una limitación significativa con el crecimiento del internet.
- **IPv6** (Protocolo de Internet versión 6) es una actualización de IPv4 y utiliza direcciones de 128 bits, lo que expande el número de direcciones posibles a un rango casi infinito. Esta versión fue diseñada para solucionar la escasez de direcciones IPv4.

## Estructura de una Dirección IPv4

Una dirección IPv4 se compone de cuatro octetos (grupos de 8 bits), separados por puntos, con valores decimales entre 0 y 255. Un ejemplo sería `192.168.1.10`. Estas direcciones se dividen en:

- **Parte de red:** Identifica la red a la que pertenece el dispositivo.
- **Parte de host:** Identifica el dispositivo dentro de la red.

## Máscaras de Subred y Notación CIDR

- **Máscara de subred:** Se utiliza para dividir una red grande en subredes más pequeñas, lo que permite una mejor administración y optimización de los recursos de red. Por ejemplo, la red `192.168.1.0/24` puede dividirse en subredes como `192.168.1.0/25` y `192.168.1.128/25`.
- **Notación CIDR (Classless Inter-Domain Routing):** Es un método para expresar una dirección IP junto con su máscara de subred de manera compacta. Facilita la configuración y el enrutamiento de redes.

## Tipos de Direcciones IPv4

- **Direcciones Públicas:** Son accesibles desde internet y se utilizan para conectar dispositivos a la red global.
- **Direcciones Privadas:** Se utilizan en redes locales, como hogares y oficinas, y no son accesibles desde internet.

## Direccionamiento Estático vs Dinámico

- **Direccionamiento Estático:** Asigna una dirección IP fija a un dispositivo, utilizado comúnmente en servidores. Es más seguro y estable, pero menos flexible.
- **Direccionamiento Dinámico:** Un servidor DHCP (Protocolo de Configuración Dinámica de Host) asigna direcciones IP temporales a los dispositivos de manera automática, lo que facilita la gestión de redes y la incorporación de nuevos dispositivos.

## Subredes

Las subredes permiten dividir una red grande en redes más pequeñas, mejorando la organización, seguridad y eficiencia. Esto es crucial para gestionar el crecimiento de la red y optimizar su rendimiento.
