# Gestión de la configuración

%%
Date:: [[2025-05-07]]
Course:: [[Ingeniería de Software II]]
Source:: [[]]
%%

### Definición

- Es el arte e identificar, organizar y controlar las modificaciones que sufre el software durante todo el ciclo de vida y que es llevado a cabo por un grupo de personas, para maximizar la productividad y minimizar los errors
	- Donde habrá cambios en el software durante su ciclo de vida
- Planea las siguientes actividades
	- **Identificación de la configuración**
		- Saber que quiero controlar. Identificar la estructura del producto, sus componentes y su tipo, haciéndolos únicos y accesibles de alguna forma.
	- **Control de cambios en la configuración**
		- Consiste en controlar las versiones y entrega de un producto, como también los cambios que se producen en él a lo largo del ciclo de vida
	- **Generación de informes de estados**
		- Consiste en informar acerca del estado de los componentes de un producto y de las solicitudes de cambio.
	- **Auditoría de la configuración**
		- Consiste en validar la completitud de un producto y la consistencia entre sus componentes, asegurando que el producto es lo que el usuario desea.
		- Si no tengo un marco de trabajo, no tengo como auditarlo.

### Elemento de configuración del software

- A cada uno de los componentes de la configuración del software se los denomina Elementos de Configuración del Software (ECS)
- Linea Base
	- Punto de referencia en el proceso de desarrollo que tomo como un punto de control.
	- Una vez que pasamos un punto de control o línea de base, ya debo cumplir con todos los requisitos de la gestión de configuración (procedimientos formales) 
- Versión
	- Un elemento en un momento dado del tiempo
- Revisiones
	- Cuando el código pasa cierto punto, debe pasar una revisión
- Variantes
	- Mismo software con algunas variantes distintas
- Release
	- Configuración del sistema que se va a comercializar o entregar al cliente


---

## 1. Identificación de la Configuración

Esta actividad consiste en determinar qué elementos del software deben ser controlados y gestionados. Implica identificar todos los componentes relevantes del producto (como código fuente, documentación, scripts, bibliotecas, configuraciones de entorno) y asignarles una identificación única. Esto permite estructurar el producto de forma clara, facilitando su acceso, mantenimiento y trazabilidad.

**Herramientas utilizadas:**

- **Sistemas de control de versiones** como Git o Subversion (SVN), que permiten organizar y versionar los archivos del proyecto.
- **Sistemas de documentación y gestión** como Jira, Notion o Trello, que ayudan a registrar y vincular los ítems de configuración.
- Convenciones de nombres, estructuras de carpetas estandarizadas y archivos como `README.md` o `CHANGELOG.md` son fundamentales para mantener la claridad.

---

## 2. Control de Cambios en la Configuración

Una vez identificados los elementos a controlar, es necesario gestionar los cambios que se realizan sobre ellos. Esta actividad abarca el registro, evaluación, aprobación e implementación de cambios a lo largo del tiempo. Su propósito es asegurar que todas las modificaciones sean trazables, justificadas y comunicadas adecuadamente.

**Herramientas utilizadas:**

- **Plataformas de control de versiones** como GitHub, GitLab o Bitbucket permiten implementar flujos de trabajo con ramas (`feature`, `hotfix`, `release`) y revisiones mediante pull requests.
- **Sistemas de integración y entrega continua (CI/CD)** como Jenkins, GitHub Actions o GitLab CI ayudan a automatizar la validación de los cambios y su despliegue.
- **Gestores de incidencias y tareas** como Jira o Asana, que permiten vincular los cambios a requerimientos específicos.

---

## 3. Generación de Informes de Estado

Esta actividad se basa en comunicar de forma clara el estado de los ítems de configuración y de las solicitudes de cambio. Responde a preguntas como: ¿qué se ha cambiado?, ¿qué versión está en uso?, ¿qué está pendiente de aprobar? La transparencia es clave para coordinar equipos y tomar decisiones informadas.

**Herramientas utilizadas:**

- **Jira** y otras herramientas de gestión ágil permiten visualizar el progreso y estado de las tareas.
- **Hojas de cálculo** como Excel o Google Sheets, usadas para reportes personalizados o seguimiento manual.
- **Plataformas de documentación colaborativa** como Notion o Confluence, donde se pueden centralizar reportes, versiones y decisiones.

---

## 4. Auditoría de la Configuración

La auditoría consiste en una revisión sistemática para verificar la completitud, coherencia e integridad del producto final. Implica validar que todos los ítems están presentes, que los cambios han sido correctamente implementados y que la versión actual del sistema cumple con los requisitos definidos.

**Herramientas utilizadas:**

- **Comandos de Git** como `git log`, `git diff` o el uso de etiquetas (`tags`) permiten verificar los cambios realizados.
- **Listas de verificación (checklists)** creadas en documentos colaborativos o herramientas como Confluence.
- **Herramientas de trazabilidad de requisitos** como IBM DOORS o Polarion, útiles en proyectos con fuerte regulación o normativas.
- En algunos casos, se emplean **normas ISO o IEEE** como marco de referencia para realizar auditorías formales.