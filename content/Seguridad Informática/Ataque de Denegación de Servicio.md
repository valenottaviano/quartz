# Ataque de Denegación de Servicio

%%
Date:: [[2025-04-14]]
Course:: [[]]
Source:: [[]]
%%

Un **ataque de denegación de servicio (DoS)** tiene como objetivo hacer que un recurso o sistema sea **inaccesible para los usuarios legítimos**, provocando una interrupción en el servicio. Lo logra mediante la sobrecarga de recursos como el ancho de banda, la CPU o la memoria del servidor víctima.

En su versión más avanzada y distribuida, se denomina **DDoS (Distributed Denial of Service)**, donde múltiples sistemas atacan simultáneamente desde distintas ubicaciones.

## Objetivos del atacante

- Saturar el servidor con solicitudes falsas.
- Interrumpir el funcionamiento normal de servicios web, correos, DNS, etc.
- Generar pérdidas económicas, reputacionales o chantajes (ransom DoS).

## Tipos de ataques DoS

#### 1. Inundación SYN (SYN Flood)
Envía múltiples paquetes TCP/SYN con direcciones de origen falsificadas. El servidor responde con SYN-ACK, pero nunca recibe el ACK final. Se acumulan conexiones semiabiertas, agotando los recursos del sistema.

#### 2. Ataque LAND
Se envía un paquete TCP/SYN con la IP de origen y destino iguales a la del servidor, y el mismo puerto. El servidor entra en un bucle de respuesta a sí mismo, consumiendo recursos.

#### 3. Inundación ICMP (ICMP Flood)
Se envía una gran cantidad de paquetes `ping` (ICMP Echo Request) a la víctima. Esta debe responder con `Echo Reply`, lo que genera congestión de red y sobrecarga del sistema.

#### 4. Ataque SMURF
El atacante envía paquetes ICMP a una dirección de broadcast con la IP falsificada de la víctima. Todos los dispositivos de la red responden, saturando al receptor original.

#### 5. Inundación UDP (UDP Flood)
Se envían masivamente paquetes UDP a puertos aleatorios. La víctima responde con mensajes ICMP de puerto inaccesible, agotando sus recursos rápidamente.

## Consecuencias de un ataque DoS

- Pérdida de disponibilidad de servicios críticos.
- Interrupción de operaciones comerciales o institucionales.
- Pérdidas económicas y afectación de la reputación.
- Posible cobertura de ataques más complejos (ataque distractor).

## Prevención y mitigación

- Uso de **firewalls** y **sistemas de detección de intrusos (IDS/IPS)**.
- Configuración de **límites de conexiones simultáneas**.
- Filtrado de tráfico mediante reglas específicas (rate limiting).
- Utilización de servicios anti-DDoS (Cloudflare, Akamai, etc.).
- Segmentación de red y servidores redundantes.

