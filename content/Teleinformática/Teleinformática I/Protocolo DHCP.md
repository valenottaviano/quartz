# Protocolo DHCP (Dynamic Host Configuration Protocol)

%%
Date:: [[2024-05-31]]
Course:: [[Teleinformática I]]
Source:: [[]]
%%

#### Introducción
El Protocolo de Configuración Dinámica de Host (DHCP, por sus siglas en inglés) es un protocolo de red que permite a los dispositivos obtener automáticamente una dirección IP y otros parámetros de configuración necesarios para conectarse a una red IP. Este protocolo simplifica la administración de direcciones IP en redes grandes y reduce la posibilidad de conflictos de direcciones.

#### Funcionamiento de DHCP
El protocolo DHCP sigue un proceso de cuatro pasos conocido como DORA:

1. **Discovery (Descubrimiento):** 
   - El cliente DHCP envía un mensaje DHCPDISCOVER en broadcast para encontrar servidores DHCP disponibles en la red.

2. **Offer (Oferta):**
   - Los servidores DHCP que reciben el mensaje DHCPDISCOVER responden con un mensaje DHCPOFFER que contiene una dirección IP disponible y otros parámetros de configuración.

3. **Request (Solicitud):**
   - El cliente selecciona una de las ofertas recibidas y responde con un mensaje DHCPREQUEST, indicando su intención de usar la dirección IP ofrecida.

4. **Acknowledgement (Confirmación):**
   - El servidor DHCP confirma la concesión de la dirección IP enviando un mensaje DHCPACK al cliente. A partir de este momento, el cliente puede utilizar la dirección IP asignada.

#### Parámetros de Configuración DHCP
Además de la dirección IP, el servidor DHCP puede proporcionar otros parámetros de configuración, tales como:
- **Máscara de subred:** Define el rango de direcciones IP dentro de una red.
- **Puerta de enlace predeterminada:** La dirección IP del enrutador que permite al cliente comunicarse con otras redes.
- **Servidores DNS:** Direcciones IP de los servidores DNS que el cliente puede usar para resolver nombres de dominio.
- **Duración de la concesión:** Tiempo durante el cual la dirección IP es válida. Después de este período, el cliente debe renovar la concesión.

#### Ventajas de DHCP
- **Automatización:** Facilita la administración de direcciones IP al asignarlas automáticamente.
- **Escalabilidad:** Ideal para redes grandes donde la asignación manual de direcciones IP sería impráctica.
- **Reducción de errores:** Minimiza los errores humanos en la configuración de direcciones IP y otros parámetros de red.

#### Desventajas de DHCP
- **Dependencia del servidor DHCP:** Si el servidor DHCP falla, los dispositivos no podrán obtener direcciones IP.
- **Seguridad:** DHCP no tiene mecanismos de autenticación intrínsecos, lo que puede permitir la asignación de direcciones IP a dispositivos no autorizados.

#### Configuración y Administración
- **Reservas DHCP:** Permiten asignar una dirección IP específica a un dispositivo determinado basado en su dirección MAC.
- **Pools de direcciones IP:** Conjuntos de direcciones IP que el servidor DHCP puede asignar a los clientes.
- **Renovación de concesiones:** El cliente puede solicitar una renovación de su dirección IP antes de que expire la concesión.
