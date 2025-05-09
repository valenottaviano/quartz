# Almacenamiento en Redes IP

%%
Date:: [[2025-05-08]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%

- Hay veces que necesitamos tener grandes capacidades de almacenamiento (+30Tb)
	- El almacenamiento en redes IP surge como una alternativa eficiente, escalable y económica frente a soluciones tradicionales como DAS, NAS y SAN basadas en Fiber Channel. Su adopción permite la centralización del almacenamiento, la consolidación de servicios y la integración con infraestructuras existentes mediante protocolos como iSCSI y FCIP.

---
## Modelos de Almacenamiento

### DAS (Direct Attached Storage)

El disco duro está conectado directamente al servidor, y está disponible únicamente para dicho equipo.

- **Conexión:** Directa al servidor.
- **Ventajas:** Servicios independientes.
- **Desventajas:**
    - Difícil administración y backup.
    - Escasa escalabilidad.
    - Elevado costo a largo plazo.

![[Pasted image 20250508202107.png]]
### NAS (Network Attached Storage)

Es un servidor que lo único que hace es almacenar datos.

- **Conexión:** A través de la red de datos.
- **Ventajas:**
    - Escalabilidad.
    - Servidor dedicado para almacenamiento.
    - Compatibilidad con sistemas UNIX y Microsoft.
- **Desventajas:**
    - Alto costo para alta disponibilidad.
    - Requiere red de datos rápida y bien dimensionada.

![[Pasted image 20250508202208.png]]
### SAN (Storage Area Network)

- **Conexión:** Red dedicada de alta velocidad.
- **Ventajas:**
    - Alto rendimiento y escalabilidad.
    - Gestión y backup centralizados.
    - Virtualización y consolidación de servidores.
- **Desventajas (FC):**
    - Alto costo de componentes.
    - Limitada conectividad WAN.

![[Pasted image 20250508202446.png]]

---
## Almacenamiento sobre IP

### Conceptos clave

- Aprovecha infraestructura LAN/WAN existente.
- Protocolos:
    - **iSCSI** para LAN.
    - **FCIP** para WAN.
- Reducción de costos frente a SAN tradicionales.
- Gestión unificada y más segura.

### Objetivos

- Alta disponibilidad.
- Escalabilidad.
- Centralización del almacenamiento.
- Accesibilidad y coexistencia con SAN heredadas.

## Algunos casos de uso

### Optimización del almacenamiento de una SAM
![[Pasted image 20250508205357.png]]

### Conexión de islas FC remotas
![[Pasted image 20250508205432.png]]

## Interconexión y Protocolos

### FCIP (Fibre Channel over IP)

- Encapsula tramas FC en paquetes IP.
- TCP/IP se encarga del control de congestión, orden y corrección.
- Permite conexión entre islas SAN remotas.

### iSCSI (Internet SCSI)

- Transmite comandos SCSI sobre TCP/IP.
- Compatible con redes LAN y WAN.
- Universaliza el acceso a dispositivos de almacenamiento.

---
## Componentes iSCSI

- **Target:** Dispositivo que publica volúmenes.
    - Tipos: Hardware, bridges y appliances.
- **Initiator:** Servidor que accede al volumen.
    - Tipos: Hardware y software.
- **iSOE/TOE:** Tecnología para arranque remoto sin disco.

---

## Alta Disponibilidad

- **Redundancia en caminos:** Doble ruta entre servidor y almacenamiento.
- **Redundancia de routers:** Routers FC/iSCSI en alta disponibilidad (HA).
- **Mapeo de WWN a IP:** Interoperabilidad entre tecnologías.

---

## Calidad de Servicio (QoS)

- Clasificación y marcado del tráfico (Gold, Silver, Bronze).
- Protocolos y técnicas:
    - WFQ, CBWFQ, RED, WRED, FRTS.
    - Reconocimiento de aplicaciones a nivel de red.

---

## Escenarios de Implementación

1. **iSCSI único:** Todos los servicios centralizados sobre iSCSI.
2. **Mixto iSCSI + FC:** SAN extendida mediante routers FC/iSCSI.
3. **FC puro:** Arquitectura centralizada VSAN (Virtual SAN).

---

## Clústeres y Replicación

### Clúster iSCSI

- Varios servidores trabajando como uno solo.
- Almacenamiento compartido y red pública/privada.

### Replicación

- **Asíncrona:** Entre cabinas remotas vía WAN.
- **Backup remoto:** Consolidación del respaldo en sitio secundario.
