# Amenazas

%%
Date:: [[2025-04-14]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%


Una **amenaza** es cualquier evento que puede desencadenar un incidente en una organización, produciendo daños materiales o pérdidas inmateriales en sus activos. Se asocia a un **peligro latente** que puede afectar la disponibilidad, integridad o confidencialidad de los datos.

---

## Tipos de amenazas

### 1. **Amenazas internas**

- Provienen del interior de la organización.
- Pueden ser más graves que las externas, ya que el usuario interno:
    - Conoce la red y su funcionamiento.
    - Tiene algún nivel de acceso autorizado.
- Causadas por:
    - Impericia.
    - Descuido.
    - Intenciones maliciosas (empleados descontentos).

### 2. **Amenazas externas**

- Se originan fuera de la red interna.
- El atacante debe realizar técnicas como escaneo de puertos y enumeración de servicios.
- Se mitigan con firewalls, IDS/IPS y buenas prácticas de seguridad.

---

## Clasificación según origen

| Tipo de amenaza           | Ejemplos                                                   |
| ------------------------- | ---------------------------------------------------------- |
| **Humanas maliciosas**    | Crackers, defacers, intrusos, empleados con mala intención |
| **Humanas no maliciosas** | Errores por desconocimiento, configuraciones incorrectas   |
| **Naturales**             | Incendios, terremotos, inundaciones                        |

---

## Amenazas comunes

### 1. **El usuario**

- Principal causa de fallas de seguridad.
- Puede actuar sin darse cuenta (ingeniería social, clic en enlaces maliciosos).

### 2. **Software malicioso**

- Incluye virus, gusanos, troyanos, spyware, ransomware, etc.
- Puede modificar datos o abrir puertas traseras al sistema.

### 3. **Intrusos**

- Personas no autorizadas que acceden al sistema (crackers, script kiddies, etc.).

### 4. **Siniestros físicos**

- Robo, incendio, humedad, sabotaje.
- Requiere respaldo externo de la información y medidas de seguridad física.

---

## Amenazas específicas

### Denegación de Servicio (DoS y DDoS)

- **Objetivo:** inutilizar servicios legítimos.
- **Métodos:** saturación de ancho de banda, consumo de recursos, explotación de vulnerabilidades.
- **Variantes:**
    - SYN Flood.
    - LAND attack.
    - ICMP Flood y Smurf.
    - UDP Flood.

### Man in the Middle (MitM)

- Intercepta comunicaciones entre dos partes.
- **Técnicas:**
    - Eavesdropping.
    - ARP Poisoning.
    - DNS/DHCP Spoofing.
    - Ataques de repetición y sustitución.

### Día Cero (Zero Day)

- Vulnerabilidades desconocidas aún no corregidas.
- Explotadas antes de que exista un parche oficial.

### Fuerza Bruta

- Prueba todas las combinaciones posibles de una contraseña.
- Combinable con ataques de diccionario (palabras comunes).

---

## Código malicioso como amenaza

| Tipo              | Descripción                                                                         |
| ----------------- | ----------------------------------------------------------------------------------- |
| **Virus**         | Se propagan insertándose en archivos. Pueden destruir datos.                        |
| **Gusanos**       | Se autorreproducen. Usan medios como correo, redes P2P.                             |
| **Troyanos**      | Simulan ser software legítimo. Pueden instalar backdoors.                           |
| **Backdoors**     | Permiten acceso remoto al sistema por parte del atacante.                           |
| **Redes de bots** | Computadoras zombis conectadas para realizar ataques masivos.                       |
| **Adware**        | Muestra publicidad invasiva. Puede recolectar datos del usuario.                    |
| **Spyware**       | Recolecta información privada sin consentimiento. Usado para marketing o espionaje. |

---

## Medidas de protección

- **Seguridad física**: extintores, cámaras, UPS, control de acceso.
- **Seguridad lógica**: contraseñas, antivirus, firewalls, actualizaciones.
- **Backups**: siempre fuera del edificio o red local.
- **Capacitación**: concientización de usuarios y prácticas seguras.
- **Políticas**: definición clara de procedimientos ante incidentes.
