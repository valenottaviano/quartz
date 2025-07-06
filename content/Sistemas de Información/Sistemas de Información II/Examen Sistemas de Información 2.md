
La Facultad de Ingeniería Informática de la Universidad ACME enfrenta un problema crítico en la gestión del tiempo de sus estudiantes. Según un estudio interno realizado en 2024:

- El 65% manifiesta dificultad para priorizar materias más importantes.
- El 52% informa una carga de tareas acumuladas en semanas de exámenes.
- El 38% destaca que las plataformas actuales carecen de funcionalidades especializadas para organización académica.

La solución actual se basa en aplicaciones genéricas no especializadas:

- No permiten clasificación multidimensional por materia, tipo de actividad, prioridad.
- Carece de alertas proactivas.
- No ofrece análisis históricos de rendimiento.
- Presenta pobre integración con calendarios y dispositivos móviles.

---

## Stakeholders:

- **Usuarios primarios:** Estudiantes de grado (usuarios principales).
- **Usuarios secundarios:** Autoridades académicas, áreas de soporte.
- **Organizacional:** Dirección de Bienestar Estudiantil (cliente institucional).
- **Desarrolladores:** Equipo técnico.

---

## Alcance Detallado del Sistema:

**Módulo 1:** Gestión Inteligente de Tareas  
Registro con campos extendidos. Materia (con integración al catálogo académico). Tipo de actividad (examen, laboratorio, proyecto, etc.). Prioridad dinámica (básica o alta). Etapas de progreso (0-100%). Subtareas verificables.

**Módulo 2:** Sistema de Alertas Predictivas  
Notificaciones proactivas. Modo “examen próximo” (bloqueo de distracciones). Integración con calendarios externos (Google Calendar, Outlook).

**Módulo 3:** Analytics Académico  
Dashboard de productividad (horas dedicadas por materia). Tasa de cumplimiento histórica. Heatmap de horas productivas. Generador de reportes PDF/Excel (Resumen semestral). Comparativo entre materias.

**Módulo 4:** Personalización Avanzada  
Perfiles de usuario (modo examen final vs. período regular). Temas visuales (oscuro, alto contraste). Recordatorios de descansos (método Pomodoro integrado).

---

## Escenarios de Uso Detallados:

**Caso 1:** Registro de Proyecto Final
1. Estudiante ingresa a la aplicación.
2. Selecciona "Nueva Tarea".
3. Completa formulario extendido: Nombre: "Proyecto IA - Detección de Objetos", Materia: "Inteligencia Artificial (INF-502)", Tipo: "Proyecto Final", Fecha límite: 15/12/2024, Peso académico: 30%.
4. Sistema calcula automáticamente prioridad 4/5.
5. Crea subáreas automáticas: Revisión bibliográfica (20%), Desarrollo del modelo (50%), Redacción de informe (30%).

**Caso 2:** Alerta Preventiva
1. 7 días antes del examen de Bases de Datos 2.
2. Sistema envía notificación push.
3. Ofrece opciones: "Programar sesión de estudio", "Ver material relacionado", "Posponer recordatorio".

---

## De las reuniones con el cliente surgió que éste espera en lo posible que:

- El sistema posea **Seguridad:** Cifrado AES-256 para datos sensibles.
- El sistema permita **Autenticación biométrica** opcional.

---

## Requisitos adicionales:

- El sistema presente un tiempo de respuesta < 0.5s para operaciones críticas. Soporte para 500+ tareas simultáneas.
- El sistema sea **responsive** (iOS, Android, Windows, macOS).
- El sistema permita **API REST** para futuras integraciones.
- El sistema opere offline con sincronización posterior.
- Máximo de 100MB de almacenamiento local.
- Notificaciones sin requerir permisos excesivos (solo alarmas importantes).
- Compatibilidad con lectores de pantalla para accesibilidad.
- Integración con plataforma Moodle de la universidad.

---

## La Universidad establece como entregables según fases:

**A) Fase 1 (Prototipo):**
- Modelo de datos completo.
- Wireframes interactivos.
- Plan de pruebas de usabilidad.

**B) Fase 2 (Producto Mínimo Viable):**
- Versión funcional con módulos básicos.
- Documentación técnica.
- API básica.
- Video demostrativo de 5 minutos.

---

## Software de Base y Hardware

- La empresa cuenta con licencias de Windows Server 2022, Windows 11 y SQL Server 2022.
- Por lo tanto, el proyecto debe desarrollarse bajo estas tecnologías y se requiere que sea diseñado para ser accedido vía Web.

---

## Ud. posee una descripción del desarrollo de Software con las siguientes características:

- Su empresa desarrolla soluciones informáticas con características similares y tiene experiencia en la **construcción de este tipo particular de aplicativos**.
- Los analistas y programadores no poseen experiencia directa en sistemas con motor de Base de Datos SQL Server, pero sí han construido hasta el momento sistemas con bases de datos Oracle.
- No cuenta con un diseñador UX dedicado.
- El cliente manifiesta la importancia de que el **Servidor esté operativo las 24 hs. del día** para garantizar el uso del aplicativo. Por lo que solicita se prevea cualquier tipo de riesgo a nivel Software, Hardware o que esté relacionado con factores externos como cortes de suministro eléctrico que puedan afectarlo.

---

## Se le pide

1. **Elabore una Matriz de Expectativas** respecto del sistema solicitado por el cliente. Incluya al menos 3 expectativas bien definidas, con su prioridad, parámetro de medición, valor actual/deseado, fecha y acciones sugeridas.
2. **Identifique al menos 4 riesgos relevantes** para la implementación del sistema. Para cada uno:
    - Describa la causa y el efecto.
    - Complete una **Matriz de Riesgo (probabilidad e impacto)** asignando un nivel cualitativo (bajo, medio, alto).
    - Proponga **acciones de mitigación** concretas.
    - Defina un **plan de contingencia** si el riesgo llegara a materializarse.
3. **Construya una Estructura de Desglose del Trabajo (EDT)** para el proyecto, llegando al nivel de tareas específicas. Indique la relación jerárquica y la identificación de cada componente.
4. **Plantee un Cronograma Tentativo** con fechas de inicio y fin para cada tarea del EDT. Incluya dependencias entre tareas principales y estimaciones de esfuerzo en horas.