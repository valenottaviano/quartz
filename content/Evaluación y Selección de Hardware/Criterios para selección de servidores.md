# Criterios para Selección de Servidores

%%
Date:: [[2025-04-24]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%


La selección adecuada de un servidor implica evaluar aspectos clave relacionados con hardware, software, escalabilidad, seguridad y compatibilidad, de acuerdo a las necesidades actuales y futuras de la organización.

---

## **1. Aspectos Generales del Servidor**

- El servidor es el **nodo central de la red** que ejecuta aplicaciones y servicios necesarios.
- Debe centralizar la carga de trabajo para eficiencia operativa.

---

## **2. Aspectos de Hardware**

### Características fundamentales:

- **Alta precisión y capacidad para tareas complejas**.
- Soporte **Hot-plug** (añadir/quitar componentes sin apagar).
- Capacidad de **tolerancia a fallos** y robustez.
- **MTBF** elevado (tiempo medio entre fallos alto).

### Subsistemas del Hardware:

| Subsistema     | Elementos clave                           |
| -------------- | ----------------------------------------- |
| Procesamiento  | Microprocesadores, cantidad, núcleos      |
| Memoria        | Cantidad, tipo (DIMM), capacidad failover |
| Almacenamiento | Tipo (SATA/SAS), RAID, capacidad failover |
| Redes          | NICs, cantidad, redundancia (failover)    |

---

## **3. Aspectos del Software**

El sistema operativo del servidor debe garantizar:

- Uso eficiente del hardware.
- Máxima estabilidad y facilidad de mantenimiento.
- Provisión de servicios esenciales como DHCP, DNS, y Firewall.

---

## **4. Tipos de Servidores**

### Servidores según Software:

- **Aplicaciones:** Web, bases de datos, servicios cliente.
- **Correo electrónico:** Gestión de email.
- **Proxy:** Control acceso a internet.
- **Streaming:** Contenido multimedia continuo.

### Servidores según Hardware:

| Tipo  | Descripción y uso recomendado                                                                                                                     |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Torre | Básicos, ideales para oficinas pequeñas (<25 empleados). Fácil monitoreo y mantenimiento.                                                         |
| Rack  | Mejor aprovechamiento de espacio, ideal para empresas medianas o con experiencia en servidores.                                                   |
| Blade | Compactos, alta densidad, ideales para grandes centros de datos. Comparten fuentes de energía y refrigeración, reducen espacio, energía y costos. |

---

## **5. Consideraciones Antes de la Compra**

### Necesidades actuales y futuras:

- Identificar el **uso principal** del servidor y el tipo de red.
- Número de nodos conectados y requisitos operativos.
- Previsión de necesidades futuras (escalabilidad).

### Capacidad de expansión:

- Servidor con ranuras adicionales PCI/PCIX, bahías para discos extra.
- Facilidad de añadir procesadores, memoria y almacenamiento externo.

### Compatibilidad:

- Cumplimiento de estándares del mercado.
- Compatibilidad de memoria, discos adicionales y sistemas operativos.

### Escalabilidad:

- Capacidad de aumentar rendimiento (procesadores adicionales, memoria, almacenamiento).
- Posibilidad de actualizaciones fáciles y eficientes.

### Seguridad:

- Protección ante fallos y amenazas.
- Posibilidad de robustecer el sistema conforme aumenta la carga y número de usuarios.

---

## **6. Procesadores**

### Familia Intel Xeon (E3 y E7):

**Características destacadas:**

- Hasta 10 núcleos y 20 hilos.
- Alta caché (30 MB L3 compartida).
- Compatibilidad con grandes cantidades de memoria (hasta 2 TB).
- Eficiencia energética con Intel Intelligent Power.
- Seguridad avanzada (AES-NI, Intel TXT).
- Mayor productividad y reducción significativa de costos operativos.
- Intel Turbo Boost y Hyper-Threading para un mejor desempeño y adaptabilidad a cargas de trabajo dinámicas.

---

## **7. Configuración Específica del Hardware**

### Procesadores:

- **Velocidad de reloj:** más GHz implica mejor desempeño.
- **Cantidad de núcleos:** múltiples núcleos permiten multitareas simultáneas eficientemente.
- **Caché:** mayor caché mejora la rapidez y eficiencia general.

### Memoria RAM:

- Debe maximizarse según lo permita el presupuesto, para reducir la lentitud causada por acceso constante a discos duros.

### Almacenamiento:

- Disco rígido principal de gran capacidad con posibilidad de expansión interna y externa.
- Uso de sistemas RAID para mayor confiabilidad y rendimiento en almacenamiento.

---

## **8. Fabricantes y Soporte Técnico**

Considerar marcas reconocidas que garanticen: IBM (hoy Lenovo), dell, hp

- Soporte técnico local eficaz.
- Tiempo de respuesta rápido en casos de falla.
- Amplias garantías y respaldo técnico certificado.

![[Pasted image 20250424201118.png]]

