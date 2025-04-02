# Planificación, Implementación y Seguimiento

%%
Date:: [[2025-04-02]]
Course:: [[Auditoría de Sistemas]]
Source:: [[]]
%%


## 1. Implantación de controles internos

Los **controles internos informáticos** deben implementarse en distintos **niveles organizativos**, adaptándose a la estructura y necesidades de cada empresa.

### Ámbitos posibles:

- Por **área o sector** (ej. contabilidad, recursos humanos, TI).
- Por **función** (seguridad, redes, desarrollo, administración).
- Por **ambiente** (desarrollo, testing, producción).

Para garantizar su eficacia, es necesario:

- Conocer la **configuración exacta** de cada sistema.
- Identificar **herramientas y recursos** necesarios.
- Documentar cada componente y procedimiento técnico.

---

## 2. Documentación técnica y de procesos

La documentación cumple un rol central en la implementación y auditoría de los sistemas.

### Debe incluir:

- Infraestructura de red.
- Configuraciones de servidores y software.
- Entornos y herramientas utilizadas (bases de datos, lenguajes, frameworks).
- Procedimientos de mantenimiento, respaldo y recuperación.
- Manuales de usuarios y administradores.

Contar con buena documentación **reduce costos de auditoría, facilita el mantenimiento y mejora la seguridad**.

---

## 3. Gestión del cambio

Cuando se implementan nuevos sistemas o se actualizan los existentes, se debe realizar una **gestión del cambio ordenada y controlada**.

### Recomendaciones:

- Establecer entornos separados:
    - **Desarrollo**: para programadores.
    - **Testing**: para validaciones funcionales y técnicas.
    - **Producción**: entorno real utilizado por los usuarios.
- Aplicar procedimientos de migración documentados.
- Probar todos los cambios antes de su implantación final.
- Registrar qué cambios se hicieron, por quién y cuándo.

Un buen sistema de control de versiones como **Git o GitLab** permite administrar estos procesos eficientemente.

---

## 4. Planificación estratégica de TI

La planificación es clave para **alinear la tecnología con los objetivos del negocio**. Toda organización debería contar con un conjunto de planes estratégicos relacionados con sus sistemas.

### a) Plan estratégico de información

Define el uso corporativo de los sistemas y considera:
- Necesidades tecnológicas de la organización.
- Amenazas y oportunidades del entorno.
- Impacto de posibles fallas en TI.

### b) Plan informático

Detalla el **camino que deben seguir los proyectos de TI**, desde su análisis hasta su desarrollo y evolución futura.

Incluye:
- Ciclo de vida de los sistemas.
- Actualizaciones planificadas.
- Evaluaciones periódicas de funcionamiento.

### c) Plan de seguridad (física y lógica)

Busca garantizar los pilares de la seguridad informática:
- **Confidencialidad**: accesos autorizados solamente.
- **Integridad**: protección contra modificaciones indebidas.
- **Disponibilidad**: sistemas accesibles cuando se necesitan.

Incluye procedimientos técnicos y organizativos para proteger los activos informáticos.

### d) Plan de contingencia (o ante desastres)

Establece cómo actuar ante eventos inesperados:
- Cortes eléctricos, caídas de servidores, incendios, ciberataques.
- Procedimientos de recuperación (por ejemplo, restaurar backups).
- Reemplazo de equipos críticos y medidas de emergencia.

**Ejemplo mencionado:**  
Un servidor se reinició inesperadamente y causó fallas en varios sistemas. No había logs que explicaran la causa. Se decidió reemplazar el equipo para evitar futuras interrupciones.

---

## 5. Seguimiento de controles y mejora continua

Una vez implantados los controles y las políticas, se debe establecer un **sistema de revisión periódica** para verificar su eficacia.

### Actividades clave:

- Verificar si los controles se están cumpliendo correctamente.
- Detectar **desviaciones o fallos**.
- Proponer **ajustes o mejoras** en base a los resultados observados.
- Evaluar el **nivel de riesgo** en cada función informática.
- Asegurar que las medidas implementadas estén alineadas con los objetivos del negocio y con el **marco legal vigente**.

---

## 6. Cultura de cumplimiento y validación directiva

La **cultura organizacional** debe apoyar el cumplimiento de las políticas y controles.

- Las políticas deben ser **validadas por la alta dirección** para que tengan legitimidad.
- Si la dirección no se compromete, los empleados tienden a ignorar las reglas.
- La seguridad y el control deben formar parte de la **identidad de la organización**, no solo de sus procesos técnicos.
