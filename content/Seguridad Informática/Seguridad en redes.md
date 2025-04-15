# Seguridad en redes

%%
Date:: [[2025-04-14]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%


La **auditoría de red** es un proceso sistemático que permite identificar, analizar y evaluar el estado de seguridad de una red informática. Su objetivo es **detectar vulnerabilidades** que puedan ser explotadas por atacantes y **proponer medidas correctivas**.

---

## Objetivos principales

- Identificar **vulnerabilidades técnicas** (puertos abiertos, servicios desactualizados, configuraciones inseguras).
- Detectar **fallas de configuración** en routers, firewalls, servidores, etc.
- Evaluar **la exposición de la red a amenazas externas e internas**.
- Verificar el cumplimiento de **políticas de seguridad**.
- Proponer **acciones correctivas y preventivas**.

---

## Tipos de auditorías

| Tipo                  | Descripción                                                 |
| --------------------- | ----------------------------------------------------------- |
| **Auditoría interna** | Desde dentro de la organización. Evalúa amenazas internas.  |
| **Auditoría externa** | Desde fuera de la red. Simula ataques de posibles intrusos. |
| **Auditoría activa**  | Interactúa con el sistema (por ejemplo, mediante escaneos). |
| **Auditoría pasiva**  | Monitorea el tráfico sin afectar el sistema auditado.       |

---

## Etapas de una auditoría de red

1. **Planeación**
    - Definir el alcance: ¿Qué segmentos de la red serán auditados?
    - Obtener permisos y coordinación con el equipo de TI.
2. **Reconocimiento**
    - Recolección de información: IPs activas, nombres de host, topología de red.
    - Herramientas: `whois`, `nslookup`, `traceroute`.
3. **Escaneo y mapeo**
    - Identificación de puertos abiertos y servicios en ejecución.
    - Herramientas: `nmap`, `masscan`, `netcat`.
4. **Detección de vulnerabilidades**
    - Evaluación automática de servicios vulnerables.
    - Herramientas: `OpenVAS`, `Nessus`, `Nikto`, `Vuls`.
5. **Explotación controlada (opcional)**
    - Validación de vulnerabilidades (sin causar daños).
    - Herramientas: `Metasploit`, `sqlmap`.
6. **Reporte y recomendaciones**
    - Clasificación de riesgos.
    - Sugerencias de mitigación.
    - Informe técnico y ejecutivo.

---

## Herramientas comunes

| Herramienta  | Función principal                           |
| ------------ | ------------------------------------------- |
| `Nmap`       | Escaneo de puertos y detección de servicios |
| `Wireshark`  | Análisis de tráfico en red                  |
| `OpenVAS`    | Escaneo y gestión de vulnerabilidades       |
| `Metasploit` | Explotación de vulnerabilidades             |
| `Nikto`      | Escaneo de servidores web                   |
| `Snort`      | Detección de intrusos (IDS)                 |

---

## Buenas prácticas

- Mantener la **documentación actualizada**.
- Auditar de forma **regular y proactiva**.
- Corregir vulnerabilidades encontradas y realizar una **auditoría de seguimiento**.
- Implementar controles de seguridad en **capas (defensa en profundidad)**.
- Asegurar la **confidencialidad** de los datos durante el proceso de auditoría.

