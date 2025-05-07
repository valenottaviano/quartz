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
	- **Generación de informes de estados**
		- Consiste en informar acerca del estado de los componentes de un producto y de las solicitudes de cambio.
	- **Control de cambios en la configuración**
		- Consiste en controlar las versiones y entrega de un producto, como también los cambios que se producen en él a lo largo del ciclo de vida
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

### Identificación de la configuración

- Identificar y asignar nombres significativos a todos y cada uno de los elementos que forman parte del producto de software
	- Establecer una jerarquía preliminar del producto
	- Selección de ECS
	- Definir las relaciones entre los ECS
	- Esquema de identificación -> Convención de cómo se van a nombrar las cosas. Que cada cosa sea única.

### Control de Cambios en la Configuración

- Suele ser la más importante. 
	- Proporcionar un mecanismo riguroso para controlar los cambios
- Tipos de cambios
	- Corrección de un defecto
	- Mejora del sistema
- Niveles de control de cambios
	- Control de cambios informal
		- Cambios del día a día dependiendo de la etapa en la que estamos. 
	- Control de cambios semi-formal
		- Una vez que pasa una revisión técnica formal. Suele necesitar una aprobación de alguna entidad (Comité de Control de Cambios)
	- Control de cambios formal
		- Se suele adoptar una vez que se empieza a comercializar el producto.