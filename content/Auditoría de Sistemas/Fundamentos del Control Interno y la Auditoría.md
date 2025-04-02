# Fundamentos del Control Interno y la Auditoría

%%
Date:: [[2025-04-02]]
Course:: [[Auditoría de Sistemas]]
Source:: [[]]
%%


## 1. ¿Qué es el control interno informático?

El **control interno** en el ámbito informático es el conjunto de procedimientos, políticas y herramientas destinados a **garantizar el correcto funcionamiento de los sistemas de información**, prevenir incidentes y asegurar la integridad, disponibilidad y confidencialidad de los datos.

- Puede ser **manual o automático**.
- Busca **prevenir, detectar y corregir errores** o problemas antes de que se conviertan en incidentes graves.
- Evoluciona junto con la complejidad del sistema: a mayor complejidad, mayor necesidad de controles.

---

## 2. Tipos de controles internos

Existen **tres tipos principales de controles** internos, y uno adicional asociado al mantenimiento de los sistemas:

### a) Controles preventivos

Se implementan **antes** de que ocurra un incidente. Su objetivo es **evitar** errores o vulnerabilidades.

**Ejemplos:**

- Firewalls y sistemas de detección de intrusos.
- Instalación de parches y actualizaciones de seguridad.
- Políticas de contraseñas fuertes.
- Backups regulares.
- Separación de ambientes (desarrollo, testing, producción).

### b) Controles detectivos

Actúan **una vez que ha ocurrido** un evento, y permiten **identificar o alertar** sobre la situación.

**Ejemplos:**

- Registros de accesos no autorizados.
- Alertas automáticas por actividad sospechosa.
- Monitoreo del espacio en disco y logs del sistema.
- Alarmas de caídas de servicios.

### c) Controles correctivos

Se utilizan **después** de un incidente para **recuperarse y mitigar el impacto**.

**Ejemplos:**

- Restauración desde backups.
- Reinstalación de sistemas afectados.
- Cambios de credenciales comprometidas.

### d) Control de mantenimiento

Consiste en asegurar que **todas las modificaciones y procedimientos** estén bien diseñados, probados y documentados **antes de su implementación**.

---

## 3. Funciones del auditor de sistemas

El **auditor informático** es el profesional encargado de revisar que se estén cumpliendo los controles establecidos, así como detectar fallos o posibles mejoras.

### Responsabilidades principales:

- Participar en el diseño, desarrollo e implementación de sistemas.
- Verificar el cumplimiento de normas y procedimientos legales y técnicos.
- Evaluar la cobertura frente a errores y fraudes.
- Analizar la eficacia, confiabilidad y utilidad de los sistemas y equipos.
- Informar a la dirección o auditor jefe sobre resultados, deficiencias y recomendaciones.

El auditor puede ser **interno** (parte de la organización) o **externo** (contratado por terceros).

---

## 4. Objetivos del control interno

Los controles internos informáticos deben:

- Asegurar que las actividades se realicen conforme a normas y procedimientos establecidos.
- Proteger los activos informáticos y garantizar la **integridad de los datos**.
- Asesorar a equipos internos y externos sobre mejores prácticas.
- Supervisar entornos y versiones de software.
- Implementar mecanismos para mitigar vulnerabilidades y riesgos.

---

## 5. Controles por entorno y nivel organizativo

Los controles internos se pueden implementar en distintos niveles:

- En sistemas operativos y bases de datos.
- En aplicaciones específicas.
- En redes, servidores y almacenamiento.
- En entornos de desarrollo, testing y producción.

Se deben **documentar y estandarizar** procedimientos para cada uno, y utilizar herramientas modernas como **Git o GitLab** para el seguimiento de versiones y cambios.

---

## 6. Control de calidad y seguridad

- El control de calidad garantiza que el sistema funcione **de forma eficaz y eficiente**.
- Los sistemas deben estar protegidos frente a accesos no autorizados.
- Es obligatorio utilizar tecnologías como **HTTPS**, certificados digitales y mecanismos de **clasificación de información**.
- Deben establecerse políticas de seguridad claras sobre **usuarios, perfiles, accesos y backups**.

---

## 7. Documentación como base de los controles

Tener la documentación actualizada y bien elaborada permite:

- Comprender el funcionamiento y configuración de cada sistema.
- Agilizar auditorías.
- Corroborar la existencia y aplicación de los controles.

**Frase del profesor:**

> "Un sistema sin documentación no es un sistema, es una artesanía."


