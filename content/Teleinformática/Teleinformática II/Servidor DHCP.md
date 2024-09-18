# Servidor DHCP

%%
Date:: [[2024-09-11]]
Course:: [[Teleinformática II]]
Source:: [[]]
%%

**DHCP** (Dynamic Host Configuration Protocol) es un protocolo de red que permite asignar dinámicamente direcciones IP y otros parámetros de configuración a los dispositivos en una red. Un **servidor DHCP** es el que gestiona y administra esta asignación automática.
- Tiene un rango dinámico de direcciones IP. Cuando me conecto, automáticamente me asigna una IP de la lista

#### Función principal del servidor DHCP:

- **Asignación automática de IP**: El servidor DHCP asigna automáticamente direcciones IP a los dispositivos cuando se conectan a la red. Esto evita tener que configurar manualmente cada dispositivo.

#### Proceso básico de DHCP:

1. **Solicitud (Discover)**: Cuando un dispositivo (cliente) se conecta a la red, envía un mensaje de difusión (broadcast) buscando un servidor DHCP disponible.
2. **Oferta (Offer)**: El servidor DHCP responde con una oferta de configuración, que incluye una dirección IP, la máscara de subred, puerta de enlace (gateway) y DNS.
3. **Solicitud de aceptación (Request)**: El cliente responde aceptando la oferta.
4. **Confirmación (ACK)**: El servidor DHCP confirma y asigna formalmente la dirección IP y demás parámetros.

#### Parámetros que asigna un servidor DHCP:

- **Dirección IP**.
- **Máscara de subred**.
- **Puerta de enlace predeterminada (gateway)**.
- **Dirección de servidores DNS**.
- **Tiempo de arrendamiento** (lease time): El tiempo que un dispositivo puede usar una IP antes de que deba renovarla o solicitar una nueva.

#### Ventajas del uso de un servidor DHCP:

- **Automatización**: Simplifica la configuración de redes, especialmente en redes grandes.
- **Reducción de errores**: Al asignar IPs automáticamente, se evitan conflictos de direcciones IP duplicadas o errores de configuración manual.
- **Flexibilidad**: Permite a los dispositivos conectarse y desconectarse de la red sin intervención manual.

#### Ejemplo de uso:

En una oficina con decenas de computadoras, un servidor DHCP facilita la gestión de las direcciones IP, permitiendo que los dispositivos se conecten de manera automática y reciban todos los parámetros necesarios para operar en la red sin necesidad de que un administrador los configure uno por uno.

