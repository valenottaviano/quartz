# IPv6

%%
Date:: [[2024-10-09]]
Course:: [[Teleinformática II]]
Source:: [[]]
%%


#### 1. **Introducción a las Direcciones IP v6**
El Protocolo de Internet versión 6 (IPv6) es la última versión del protocolo IP, diseñado para reemplazar al Protocolo de Internet versión 4 (IPv4) debido a la escasez de direcciones que presenta este último. IPv6 permite una mayor cantidad de direcciones disponibles, mejora la eficiencia del enrutamiento y ofrece características de seguridad y rendimiento optimizadas.

#### 2. **Formato de las Direcciones IPv6**
Una dirección IPv6 tiene una longitud de 128 bits, lo que permite un total de \(2^{128}\) direcciones posibles (aproximadamente 340 sextillones de direcciones). Esta diferencia es significativa comparada con las direcciones IPv4 de 32 bits, que solo permiten 4.294.967.296 direcciones únicas.

- **Representación en Hexadecimal**: Las direcciones IPv6 se representan en 8 bloques de 16 bits, separados por dos puntos (:), cada bloque se expresa en formato hexadecimal. Por ejemplo:
  ```
  2001:0db8:85a3:0000:0000:8a2e:0370:7334
  ```

- **Compresión de Ceros**: Si hay uno o más bloques consecutivos de ceros, pueden omitirse y representarse como "::". Esto solo puede hacerse una vez en una dirección:
  ```
  2001:0db8:0000:0000:0000:0000:1428:57ab
  ```
  Puede representarse como:
  ```
  2001:db8::1428:57ab
  ```

#### 3. **Tipos de Direcciones IPv6**
Las direcciones IPv6 se clasifican en tres tipos principales:

- **Unicast**: Identifica a una única interfaz de red. Los paquetes enviados a una dirección unicast se dirigen a un solo destinatario. Los subtipos incluyen:
  - **Global Unicast**: Direcciones únicas en Internet, equivalentes a las direcciones públicas en IPv4.
  - **Link-Local**: Son válidas solo dentro de un segmento de red local y comienzan con el prefijo `fe80::`.
  - **Unique Local**: Son similares a las direcciones privadas en IPv4, usadas para comunicación interna dentro de una red, pero no enrutable en Internet. Usan el prefijo `fc00::/7`.

- **Multicast**: Se envían a múltiples destinatarios (varios dispositivos) simultáneamente, todos los dispositivos que pertenecen a un grupo multicast recibirán los paquetes enviados a la dirección multicast.

- **Anycast**: Similar a unicast, pero los paquetes se envían al nodo más cercano de un grupo de destinatarios que comparten la misma dirección. La decisión de cuál es el más cercano la determina el protocolo de enrutamiento.

#### 4. **Estructura de las Direcciones IPv6**
Las direcciones IPv6 se dividen en dos partes principales:

- **Prefijo de red**: Corresponde a la parte de la dirección que identifica la red, análoga a la "red" en IPv4. Generalmente, los primeros 64 bits se utilizan para el prefijo de red.
  
- **Identificador de Interfaz (Interface ID)**: Los últimos 64 bits suelen ser usados para identificar a una interfaz dentro de la red. Este identificador puede generarse automáticamente a partir de la dirección MAC mediante un proceso llamado "EUI-64" o puede ser asignado manualmente.

#### 5. **Beneficios de IPv6 frente a IPv4**
- **Espacio de direcciones más grande**: La principal ventaja de IPv6 es su inmenso espacio de direcciones, que asegura que no se agotarán en un futuro previsible.
  
- **Autoconfiguración**: IPv6 soporta autoconfiguración sin estado, lo que permite que un dispositivo se conecte a la red y configure su dirección IP automáticamente, sin necesidad de un servidor DHCP.
  
- **Multicast y Anycast mejorados**: IPv6 soporta estos modos de transmisión de manera nativa, mejorando el rendimiento de las aplicaciones que los requieren, como la transmisión de video en tiempo real.
  
- **Seguridad integrada (IPsec)**: IPv6 fue diseñado con seguridad en mente, integrando IPsec (Internet Protocol Security) como una característica obligatoria, mientras que en IPv4 es opcional.

- **Menor sobrecarga en el encabezado**: Aunque el encabezado IPv6 es más grande que el de IPv4, ha sido simplificado para hacer el enrutamiento más eficiente, reduciendo la carga en los enrutadores.

#### 6. **Transición de IPv4 a IPv6**
Dado que la transición de IPv4 a IPv6 no ocurre de forma instantánea, hay varios mecanismos de transición y coexistencia:

- **Doble pila (Dual Stack)**: Permite que dispositivos soporten tanto IPv4 como IPv6. Esto permite que una red utilice ambos protocolos simultáneamente, con IPv6 como el preferido siempre que sea posible.

- **Túneles (Tunneling)**: Se encapsulan los paquetes IPv6 dentro de paquetes IPv4 para su transporte a través de redes IPv4. Ejemplos de mecanismos de túnel incluyen 6to4 y Teredo.

- **Traducción de Direcciones de Red (NAT64)**: Permite que dispositivos IPv6 se comuniquen con dispositivos IPv4 mediante la traducción de direcciones de uno a otro.

#### 7. **Desafíos de IPv6**
- **Compatibilidad con IPv4**: IPv6 no es compatible directamente con IPv4, lo que complica la transición, ya que muchas infraestructuras, dispositivos y aplicaciones aún dependen de IPv4.

- **Despliegue global**: Aunque IPv6 ya es utilizado en muchas partes del mundo, su adopción total ha sido lenta debido a los costos y esfuerzos requeridos para actualizar infraestructuras y dispositivos.

#### 8. **Ejemplos de Direcciones IPv6**

- **Dirección Global Unicast**: 
  ```
  2001:0db8:85a3:0000:0000:8a2e:0370:7334
  ```

- **Dirección Link-Local**:
  ```
  fe80::1ff:fe23:4567:890a
  ```

- **Dirección Multicast**:
  ```
  ff02::1
  ```

### Conclusión
IPv6 es la evolución natural del protocolo de Internet, creado para superar las limitaciones del IPv4, especialmente en términos de espacio de direcciones. A medida que más dispositivos se conectan a Internet, la adopción de IPv6 se vuelve crítica para garantizar la conectividad a largo plazo y permitir el crecimiento continuo de la red mundial. Sin embargo, la coexistencia con IPv4 sigue siendo un desafío mientras se implementa de manera global.