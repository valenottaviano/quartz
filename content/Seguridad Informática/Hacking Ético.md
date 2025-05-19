# Hacking Ético

%%
Date:: [[2025-05-19]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%

## 1. ¿Qué es el Hacking Ético?

El **hacking ético** es una práctica profesional que consiste en realizar ataques simulados y controlados a sistemas informáticos con el objetivo de **identificar vulnerabilidades de seguridad** antes de que puedan ser explotadas por atacantes maliciosos. También se lo conoce como **penetration testing** o **intrusion testing**.

> _"Para atrapar a un intruso, primero se debe pensar como un intruso."_

### Características:

- Se realiza con autorización del propietario del sistema.
- Evalúa la seguridad física y lógica.
- Utiliza las mismas herramientas y técnicas que un atacante real.
- No causa daño ni interrumpe operaciones.

---

## 2. ¿Quién lo realiza?

Los **hackers éticos**, también llamados **pen-testers**, son expertos en sistemas, redes y ciberseguridad que actúan en nombre de una organización para detectar vulnerabilidades:

- Acceden a sistemas para probar su seguridad.
- Usan herramientas similares a los hackers maliciosos.
- Informan los hallazgos y recomiendan medidas preventivas.

---

## 3. ¿Por qué solicitar un hacking ético?

La ejecución controlada de ataques permite:

- Detectar el **nivel real de seguridad** interno y externo.
- Evaluar el **grado de acceso** que tendría un atacante a información crítica.
- Descubrir **vulnerabilidades ocultas** por configuraciones deficientes.
- Proporcionar un **informe con recomendaciones de mitigación**.

---

## 4. Fases de un hacking ético

El proceso se divide en varias fases secuenciales:

| Fase                         | Descripción                                                               |
| ---------------------------- | ------------------------------------------------------------------------- |
| **Reconocimiento**           | Recolección de información pública o privada. Puede ser pasiva o activa.  |
| **Escaneo**                  | Identificación de puertos, servicios y vectores de ataque.                |
| **Enumeración**              | Obtención de nombres de usuarios, servicios activos y topología de red.   |
| **Acceso**                   | Explotación de vulnerabilidades para ingresar al sistema.                 |
| **Mantenimiento del acceso** | Prueba de persistencia, simulando un atacante que permanece oculto.       |
| **Documentación**            | Registro de hallazgos, evaluación de riesgos y recomendaciones de mejora. |

---

## 5. Tipos de pruebas

- **Con objetivo**: Se evalúa una parte específica del sistema.
- **Sin objetivo**: Se revisa todo el sistema sin restricciones.
- **A ciegas**: Solo se usa información pública.
- **Informadas**: Se proporciona información interna para simular un ataque interno.
- **Externas**: Simulan ataques desde fuera de la organización.
- **Internas**: Simulan amenazas desde adentro.

### Modalidades:

- **Red Teaming**: Pruebas encubiertas, el personal de TI no está informado.
- **Blue Teaming**: Pruebas informadas al equipo de TI, se evalúa la respuesta.

---

## 6. Resultados y documentación

Al finalizar el análisis, se entrega:
- **Informe técnico**: Detallado, dirigido a equipos de IT.
- **Informe ejecutivo**: Resumen para la alta dirección.
- Contienen:
    - Vulnerabilidades encontradas.
    - Riesgos potenciales.
    - Recomendaciones para mitigación.

---

## 7. Beneficios del hacking ético

- Mejora la **seguridad proactiva**.
- Reduce el **riesgo de incidentes reales**.
- Optimiza el tiempo de **respuesta ante ciberataques**.
- Mejora la **imagen corporativa** ante clientes y partners.

---

## 8. Técnicas de reconocimiento

### Reconocimiento pasivo:

- Sin interactuar con el objetivo.
- Ejemplos:
    - Google Hacking (GHDB)
    - WHOIS / DNS
    - Dumpster diving
    - Llamadas telefónicas

### Reconocimiento activo:

- Interacción directa con el objetivo.
- Técnicas intrusivas y más detectables.
- Ejemplos:
    - Escaneo de puertos (NMAP)
    - Ingeniería social

---
## 9. Herramientas comunes

| Herramienta   | Uso principal                                    |
| ------------- | ------------------------------------------------ |
| **NMAP**      | Escaneo de puertos y redes                       |
| **OWASP ZAP** | Análisis de vulnerabilidades en aplicaciones web |
| **OPENVAS**   | Auditoría de seguridad de sistemas completos     |
| **GHDB**      | Búsqueda de información mediante Google Hacking  |


