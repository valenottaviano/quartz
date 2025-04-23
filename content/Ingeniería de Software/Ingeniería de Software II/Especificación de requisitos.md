# Especificación de requisitos

%%
Date:: [[2025-04-16]]
Course:: [[Ingeniería de Software II]]
Source:: [[]]
%%

## Definición de Especificación de Requisitos

> Es un documento que describe lo que un sistema deberá hacer

- Qué es la administración de requisitos? 
	- Una guía sistemática para educir, organizar, y documentar los requisitos de un sistema, y un proceso que establece y mantiene el acuerdo, entre el cliente y el equipo de proyecto, sobre los cambios de requisitos del sistema
	- La Administración de Requisitos está íntimamente vincula al tamaño y complejidad del proyecto
		- No tiene sentido hacer un procedimiento de administración muy complejo para un grupo pequeño de trabajo
- El rol de los requisitos
	![[Pasted image 20250416174000.png]]
	- La necesidad se debe traducir en la especificación de requisitos a través de un análisis. Debe conocer los dos lenguajes (cliente, desarrollador)
	- Complejidad en la educción
		- Los clientes pueden no tener claras sus necesidades, o en la forma de expresarlas.
		- Las necesidades cambian a todo momento.
		- Factores externos


### Conceptos claves

- Validación 
	- El cliente valida que los requisitos reflejan sus necesidades
	- Debe ser capaz de leer la especificación y entenderla
- Verificación
	- Permite chequear que el producto satisface los requisitos
	- Se trata a través de un test de aceptación (las partes recorren los requisitos uno a uno y comprueban que el producto los satisface)
- Seguimiento
	- hacia delante
		- Desde los requisitos hacia el producto (verificación)
		- Desde las necesidades hacia los requerimientos
	- hacia atrás
		- Desde los requisitos hacia las necesidades (validación)
		- Desde el producto hacia los requisitos
			- Podemos caer en hacer más cosas de las que pidieron
- Administración de requisitos
	- Analizar los cambios y nuevos requisitos


### Análisis del Problema

- Definición
	- Es el proceso de entender los problemas del mundo real y las necesidades del usuario, y proponer una solución para satisfacer esas necesidades
 - Pasos para lograr los objetivos
	1. Obtener información sobre la Definición del Problema 
		- Se intentará hacer una descripción lo más breve y conciso posible.
		- Se puede incluir los beneficios que tendría 
	2. Entender el origen del problema 
		- Técnica: diagrama de pescado
		- Evitar el deseo de solucionar TODAS las causas. El costo es más caro que el problema?
	3. Identificar los clientes y usuarios 
		- Cliente: Cualquier persona que puede ser afectada directamente por la implementación del nuevo sistema
	4. Definir los límites de la solución 
		- Qué es lo que me corresponde resolver a mi (desarrollador)? Hay que tener claro el límite de acción de mi solución.
	5. Identificar las limitaciones impuestas sobre la solución
		- Una limitación es una restricción al grado de libertad para proveer la solución. Son cosas que no son decisión mía.
		- Pueden ser 
			- Económicas
			- Políticas
			- Técnicas
			- De sistema
			- De entorno
			- RRHH y planificación


### Línea de base de los requisitos

- Es el conjunto de necesidades, características, requisitos, que serán desarrollados en una versión específica de la aplicación o sistema
- El primer paso en la creación de la línea de base es simplemente listar las necesidades que han sido definidas para el sistema. Es importante controlar el nivel de detalle en este proceso.
- Se prevé que cualquier sistema, sin importar su complejidad, puede ser descrito por una lista de 25-99 características.
	- Con más, se supone que se está observando al sistema a un nivel de detalle que es muy costoso de comunicar efectivamente a los clientes y desarrolladores.
	- Con menos, el nivel de detalle podría ser muy pobre para proveer un entendimiento suficiente.

![[Pasted image 20250416192654.png]]


### Establecimiento de Prioridades

- De toda la lista de deseos/prioridades, hay que darle importancia a cada uno.
- Es importante que los clientes, usuarios y otras personas representativas (no el equipo de desarrollo) establezcan las prioridades para el futuro software
- La asignación inicial deberá realizarse sin demasiada influencia de la comunidad técnica, es decir, el nivel de dificultad en la implementación de las características influenciará las prioridades del cliente, y el resultado podría provocar que el sistema no satisfaga las necesidades del usuario
- La parte técnica deberá incluirse en etapas posteriores.
![[Pasted image 20250416192937.png]]
- Intentar no priorizar con números (suele ser confuso). Mejor hacer la opción que está en el ejemplo


### Asignación del esfuerzo

- Deberá realizar una estimación temprana del esfuerzo requerido para cada una de las características planteadas por el cliente.
- Esta estimación es necesaria para no invertir recursos en lo que posteriormente será considerado como parte del “inventario inservible”, especificación de requisitos para características que no serán implementadas, información del diseño para estas características, planificación de pruebas para requisitos que más adelante serán eliminados del proyecto
![[Pasted image 20250416193305.png]]

### Gestión de riesgos en la necesidad

- Se considera que el riesgo es la probabilidad de que la implementación de una característica cause un impacto adverso en la planificación del proyecto.
- El riesgo nos da una medida relativa del impacto potencial sobre incluir una característica dentro de la línea de base del proyecto.
- El equipo de desarrollo establecerá el riesgo, basándose en algún método seleccionado para cada caso.
- La asignación del riesgo a cada una de las características permitirá tomar decisiones tempranas en el proyecto
![[Pasted image 20250416193524.png]]


### Contenidos de un Requisito

- Información acerca del problema.
- Propiedades y comportamiento del problema.
- Restricciones de diseño.
- Descripción de cómo el futuro sistema ayudará a sus usuarios a realizar mejor sus tareas.
	- Cómo le cambia la realidad actual la solución? Cuáles son los beneficios?
- Restricciones acerca de la tecnología que se utilizará en la construcción del nuevo sistema.
- Restricciones de las propiedades emergentes del sistema (requisitos no funcionales)
- Formas de expresarlo
	- Requisitos de datos
	- Requisitos funcionales
	- Requisitos no funcionales (o de calidad)
	- Otros productos a entregar: instalación del sistema, conversión de datos, capacitación, operación del sistema, etc.
	- Requisitos de administración
	- Ayudas al lector


### Cómo se escriben los requisitos?

- En la práctica, lo más utilizado es el lenguaje natural, a pesar de su inherente ambigüedad.
- Requisitos en negativo
	- Tan importante como decir lo que el sistema debe hacer, lo es decir lo que el sistema NO debe hacer. Los requisitos "en negativo" limitan el ámbito del sistema. Las razones son varias:
		- En primer lugar especifican dónde NO deben usarse recursos
		- Es fundamental especificar lo que el sistema no hará, sobre todo en los sistemas críticos (es decir, sistemas en los que un fallo puede provocar accidentes)
		- Se debe especificar como el sistema evitará la aparición de situaciones potencialmente peligrosas.

## Educción de Requisitos

- Es la actividad más humana!!
- Se refiere a la captura y descubrimiento de los requisitos. Es una actividad mas humana que técnica, en la que se identifica a los interesados y se establecen las primeras relaciones entre ellos y el equipo de desarrolladores.
- Fuentes de requisitos
	- Metas: Factores críticos de éxito
	- Conocimiento del dominio de la aplicación
	- Los interesados. Los afectados por el sistema
	- El entorno organizacional. Los procesos de negocio

### Productos Intermedios

- No es posible educir requisitos desde los comienzos. Los requisitos son el producto final del proceso de educción, y habitualmente se necesitan muchos productos intermedios.
	- Una descripción de los trabajos presentes en el dominio.
	- Una lista de los problemas presentes en el dominio.
	- Una lista de las metas y acciones críticas. (requisitos preliminares)
	- Ideas sobre el futuro sistema.
	- Posibilidades reales.
	- Consecuencias y riesgos.
	- Resolución de conflictos entre los clientes/usuarios.
	- Requisitos Finales
	- Establecimiento de prioridades a los requisitos
	- Comprobaciones para establecer si los requisitos son completos, necesarios, etc.


## Análisis de Requisitos de Software

Consiste en detectar y resolver conflictos entre requisitos. Se deben precisar los límites del sistema y se trasladan los requisitos de usuarios a requisitos del software

- Se realizan tres subtareas fundamentales
	- Clasificación de los requisitos
	- Modelización de los requisitos
	- Negociación

### Clasificación de los Requisitos

- En funcionales y no funcionales (capacidades vs restricciones)
- Por prioridades
- Por coste de implementación
- Por niveles (alto y bajo nivel)
- Según su volatilidad / estabilidad
- Si son requisitos sobre el proceso o sobre el producto


### Modelización de los Requisitos

- Existen distintas formas de modelizar los requisitos, modelos de datos, de procesos, de control de estados, de objetos, etc. Pero se debe tener en cuenta que el objetivo es entender el problema y no la representación de la solución
- Puede depender de
	- La naturaleza del problema
	- La experiencia del modelizador
	- La disponibilidad de herramientas
	- Por decreto. El cliente impone una notación


### Negociación de Requisitos

- Intervienen individuos con distintos y a menudo enfrentados intereses
- Los conflictos normalmente son descubiertos durante el análisis.
- Todo conflicto descubierto debería disparar un proceso de renegociación.
- Los conflictos NUNCA deben resolverse “por decreto”.
- Los conflictos de requisitos, generan NUEVOS REQUISITOS.
- Los acuerdos alcanzados deben ser correctamente documentados, favoreciéndose así la trazabilidad de los mismos.