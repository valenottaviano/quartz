# Sistemas en cluster

%%
Date:: [[2025-06-12]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%

## ¿Qué es un Cluster?

Un **cluster de computadoras** es un conjunto de equipos interconectados que trabajan de manera coordinada como si fueran un único sistema. Su objetivo principal es incrementar el rendimiento, disponibilidad y escalabilidad de los servicios o cálculos que se ejecutan.

---

## Ejemplos de Sistemas Clusters Implementados

### Beowulf (1994)

- Creado por Donald Becker y Thomas Sterling.
- Compuesto por 16 PCs con procesadores Intel DX4 a 200 MHz.
- Conectados por un switch Ethernet.
- Rendimiento teórico: 3.2 GFlops.

### Berkeley NOW (1997)

- 105 estaciones Sun Ultra 170 conectadas por red Myrinet.
- Cada estación con:
    - CPU Ultra1 de 167 MHz
    - 512 KB de caché L2
    - 128 MB RAM
    - 2 discos de 2.3 GB
    - NIC Ethernet y Myrinet
- Rendimiento: 10 GFlops.

### Google

- Más de 15.000 PCs.
- Cada búsqueda consume cientos de MB y billones de ciclos de CPU.

### Cluster PS2

- 70 consolas PlayStation 2 con Linux Kit y MPI.
- Utilizado en cómputo científico y visualización avanzada.

### Cluster X (Terascale)

- Construido en el Tecnológico de Virginia (2003).
- 2200 procesadores Apple G5 de 2.3 GHz.
- Red Infiniband 4x (procesos) y Gigabit Ethernet (administración).
- 4 TB RAM y 176 TB de disco.
- Rendimiento: 12.25 TFlops.

### Thunder

- 4096 procesadores Intel Itanium2 Tiger4 a 1.4 GHz.
- Red basada en tecnología Quadrics.
- Rendimiento: 19.94 TFlops.
- Segunda posición en el ranking TOP 500.

---

## Gestión de Recursos Distribuidos: Sistemas de Colas

Los **gestores de colas** administran la ejecución de trabajos y recursos disponibles, optimizando el rendimiento y reduciendo costos.

### Comandos Clave

- `qsub`: envía trabajos (con requisitos de memoria, tiempo, espacio).
- `qstat`: consulta el estado de los trabajos.
- `qdel`: elimina trabajos.
- `qconf`: configuración del gestor.

### Planificación

- El sistema pone en ejecución los trabajos disponibles con mayor prioridad.
- Se puede integrar con planificadores como Maui o Moab.

---

## Balanceo de Carga: Linux Virtual Server (LVS)

**LVS/IPVS** es un servicio de red escalable y de alta disponibilidad que balancea carga para servicios como HTTP y FTP.

### Modos de Balanceo

- **NAT**: Una IP pública. El nodo maestro reescribe los paquetes.
- **Tunneling IP**: El nodo maestro no reescribe los paquetes.
- **Enrutamiento Directo (DR)**: Todos los nodos comparten el mismo segmento de red.

---

## Aplicaciones de Clusters

### En Ciencia

- Requieren alta capacidad de cómputo, memoria y almacenamiento.
- Necesitan sistemas dedicados.
- Ejemplos:
    - Simulaciones (Earth Simulator)
    - Genómica computacional
    - Predicción meteorológica (MM5)
    - Simulación de corrientes marinas
    - Química computacional

### En Empresas

- Prioridad: alta disponibilidad y respuesta inmediata.
- Servicios en ejecución continua, sin colas.
- Ejemplo de distribución:
    - Un nodo para BD
    - Otro para EJB
    - Otro para el servidor web
- Ejemplos de uso: Flickr, Wikipedia, Google.

