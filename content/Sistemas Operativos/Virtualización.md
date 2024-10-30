# Virtualización

%%
Date:: [[2024-10-18]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

## Definición de Virtualización

La virtualización es un proceso que permite dividir o combinar recursos de computación para presentar una visión unificada y transparente del entorno al usuario o administrador, sin que este necesite interactuar directamente con el hardware subyacente. En términos más técnicos, la virtualización es una capa de software o hardware que abstrae los recursos físicos, como CPU, memoria, almacenamiento y red, para crear múltiples instancias virtuales que operan de manera independiente.

- **Abstracción de recursos físicos:** Los elementos reales son "ocultados" y los sistemas virtuales proporcionan recursos sin necesidad de acceso directo al hardware.
- **Flexibilidad y eficiencia:** La virtualización maximiza el uso de los recursos, ofreciendo un entorno flexible y optimizado tanto para hardware como software.

## Problemática del Datacenter y Solución mediante Virtualización

Antes de la virtualización, los datacenters enfrentaban varios desafíos, como:
- **Bajo aprovechamiento de recursos:** En muchos casos, los recursos de hardware como CPU y almacenamiento se infrautilizaban.
- **Altos costos de operación (TCO):** El mantenimiento de múltiples servidores físicos era caro y complejo.
- **Limitaciones del hardware:** El "hierro" (hardware) imponía una barrera física para la escalabilidad y flexibilidad.

La virtualización aborda estos problemas al permitir que varios sistemas operativos o aplicaciones se ejecuten en un solo servidor físico, lo que optimiza el uso de los recursos y reduce significativamente los costos operativos.

## Tipos de Virtualización

1. **Virtualización de Sistema Operativo:** Múltiples sistemas operativos virtuales (denominados "guests") pueden ejecutarse sobre un único sistema operativo real en un servidor físico.
![[Pasted image 20241018202637.png]]
2. **Virtualización de Servidor:** El hardware del servidor físico se virtualiza, lo que permite ejecutar múltiples sistemas operativos directamente sobre una capa de virtualización, sin necesidad de un sistema operativo anfitrión.
![[Pasted image 20241018202834.png]]
3. **Virtualización de Almacenamiento:** Este tipo de virtualización permite que los recursos de almacenamiento de distintos fabricantes se consoliden en un "pool" de recursos, maximizando su utilización y eliminando la necesidad de almacenamiento local en cada host.
![[Pasted image 20241018202854.png]]
4. **Virtualización de Host:** Permite gestionar dinámicamente los recursos de un servidor físico para adaptarse a las demandas de las máquinas virtuales.

## Beneficios de la Virtualización

La virtualización ofrece múltiples beneficios:

- **Consolidación de servidores:** Disminuye la cantidad de servidores físicos necesarios mediante la ejecución de múltiples máquinas virtuales en un solo servidor.
- **Mayor disponibilidad:** Las soluciones virtualizadas permiten una alta disponibilidad (cerca del 99.999%), lo que asegura tiempos mínimos de inactividad.
- **Recuperación ante desastres:** Mejora la capacidad de respuesta y recuperación en situaciones críticas, reduciendo los tiempos de recuperación de días a minutos.
- **Reducción de costos:** Menores costos de operación y mantenimiento gracias a una mejor utilización de los recursos.
- **Flexibilidad:** El entorno virtualizado permite la rápida adaptación a cambios en las demandas de recursos.

## Tendencias del Futuro

- **Virtual Appliances:** Se trata de máquinas virtuales preconfiguradas y optimizadas para realizar funciones específicas, como bases de datos o servidores de correo. Esta tendencia permite la implementación rápida y sencilla de entornos complejos.
- **Crecimiento sostenido:** Según las previsiones, el uso de virtualización continuará creciendo, impulsado por su adopción en grandes empresas, gobiernos y proveedores de servicios de Internet.
