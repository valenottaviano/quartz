# Documento de Requisitos

%%
Date:: [[2025-04-16]]
Course:: [[Ingeniería de Software II]]
Source:: [[Especificación de requisitos]]
%%


- Es el modo habitual de almacenar y comunicar los requisitos.
- Es recomendable la utilización de dos tipos de documentos de requisitos, con distinto niveles de detalle:
	- DRU: Documento de Requisitos de Usuario
	- ERS: Especificación de Requisitos de Software


### Características Necesarias en una ERS:

- No Ambigua
	- La ERS es no ambigua si todo requisito posee una sola interpretación. En la práctica, la ambigüedad causa pocos problemas. Si el desarrollador encuentra un requisito ambiguo, simplemente deberá consultar con el cliente para aclararlo. El riesgo se produce cuando el desarrollador cree que entendió lo que el cliente necesita, pero el cliente realmente piensa en algo diferente. Explicar el propósito de cada requisito con términos relativos al dominio es una buena ayuda.
- Completa
	- Una ERS es completa si todo lo que se supone que el software debe hacer está incluido en ella. La mayoría de los requisitos son triviales lo que hace imposible su especificación. Si se intenta especificarlos, puede consumir demasiado tiempo provocando la pérdida de calidad y tornando poco entendible la especificación. Se deberá asegurar que los requisitos no triviales se encuentran especificados (satisfacer las metas del negocio).
- Correcta
	- Todo requisitos de la ERS contribuye a satisfacer una necesidad real. Un problema típico en la práctica es que la necesidad actual es algo diferente (el analista no entendió) o que el cliente no necesita realmente esa característica.
- Comprensible
	- Todo tipo de lectores (cliente, usuarios, desarrolladores, equipo de pruebas, gestores, etc.) entienden la ERS.
- Verificable
	- Para cada requisito expresable en la ERS existe un procedimiento de prueba finito.
- Internamente Consistente
	- NO existen conjuntos de requisitos contradictorios.
- Externamente Consistente
	- ninguno de los requisitos está en contradicción con lo expresado en documentos de nivel superior
- Realizable
	- Si, dados los actuales recursos, la ERS es realizable.
- Concisa
	- La ERS debe ser lo más breve posible, sin que esto afecte al resto de atributos de calidad.
- Independiente del diseño
	- Existen más de un diseño e implementación, por lo tanto debe limitarse a describir el comportamiento externo del sistema software.
- Trazable
	- Cada requisito se puede referenciar en forma unívoca. Una especificación es trazable si se puede ver de dónde vienen los requisitos y dónde son empleados en el diseño y el código.
- Modificable
	- Cada requisito se puede referenciar en forma unívoca. Una especificación es trazable si se puede ver de dónde vienen los requisitos y dónde son empleados en el diseño y el código.
- Electrónicamente almacenable
	- Está almacenada en procesadores de texto, bases de datos, o mejor aún en una herramienta de gestión de requisitos (Rational RequisitePro, Doors, Etc.).
- Anotada por Importancia relativa
	- Si los requisitos se clasifican según su importancia, como mínimo un requisito puede ser “Obligatorio, Opcional o deseable”.
- Anotada por estabilidad relativa
	- a cada requisito se le asigna una probabilidad de cambio. Ej. (Alta, Media, Baja)
- Anotada por versión
	- cuando un lector de la ERS, puede determinar en que versión del producto se satisfacerá algún requisito.
- No redundante
	- cada requisito se expresa en un solo lugar de la ERS.
- Precisa
	- una ERS es precisa si hace uso de valores numéricos para indicar las características del sistema.
- Reutilizable
	- si ciertas secciones de la ERS se pueden reutilizar.
- Organizada
	- Si el lector puede fácilmente encontrar la información buscada.
- Con referencias cruzadas
	- se debe utilizar referencias cruzadas entre requisitos, si es necesario, ya que esto describe mucho más las necesidades del sistema.

