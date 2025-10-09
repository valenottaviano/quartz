# Técnicas de Diseño de Testing

%%
Date:: [[2025-09-25]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%

## Estrategia de pruebas

- Define qué se va a probar y cómo se va a probar
- El objetivo es encontrar los defectos más importantes, lo antes posible y con los menores costos posibles.
- Se dirige a encontrar el equilibrio óptimo entre el esfuerzo de las pruebas y la cobertura requerida de los riesgos

## Pruebas estáticas

>Procedimiento utilizado para crear o seleccionar un método de prueba, identificar condiciones de prueba y derivar casos de prueba.

- Pruebas en las que un elemento de prueba se examina frente a un conjunto de criterios de calidad u otros sin que se ejecute el elemento de prueba.
![[Pasted image 20250925150401.png]]

- Auditorias
	- Procesos 
	- Gestión de la calidad
- Revisiones
	- Revisión informal
	- Revisión guiada
	- Revisión técnica
	- Inspección
## Pruebas dinámicas

> Pruebas en las que se evalúa un elemento de prueba, ejecutándolo.

![[Pasted image 20250925150446.png]]

#### Caja blanca
- Técnica de diseño de casos de prueba que usa la escritura interna del componente o sistema para obtener los casos de prueba.
- El tester conoce la estructura interna del programa/código
- La escritura del programa es el foco de atención

![[Pasted image 20250925150710.png]]

- Tipos
	- Cobertura
	- Sentencia
	- Decisión
#### Caja negra

- Técnica de diseño de casos de prueba sin referencia a la estructura interna del componente o sistema para obtener los casos de prueba
- La estructura interna del objeto de prueba es irrelevante o desconocida
- Prueba del comportamiento entrada/salida

![[Pasted image 20250925150851.png]]

- Tipos
	- Partición de equivalencia
	- Análisis de valores límites
	- Grafos causas efectos
	- Pruebas de casos de uso

#### Basados en la experiencia

- Son aquellas en las que las pruebas se derivan de la habilidad e intuición del tester y su experiencia con aplicaciones y tecnologías similares
- 

- Tipos
	- Predicción de errores
	- Lista de comprobación
	- Pruebas exploratorias




## Técnicas de pruebas (de caja negra)

#### Clases de equivalencia
- Técnica donde los valores de entrada del sistema se dividen en grupos o clases que vayan a tener un comportamiento similar, de manera que pueden ser procesadores de la misma forma. **Las clases se dividen en datos válidos e inválidos.**
- Se definen de la siguiente forma
	- Si una condición de entrada especifica un rango, se define una clase de equivalencia válida y dos inválidas
	- Si una condición de entrada requiere un valore específico, se define una clase de equivalencia válida y dos inválidas
	- Si una condición de entrada especifica un miembro de un conjunto, se define una clase de equivalencia válida y una inválida
	- Si una condición de entrada es booleana, se define una clase válida y una inválida.

![[Pasted image 20250925151527.png]]
#### Análisis de valores límites
- Complementa la partición de equivalencia.
- En lugar de seleccionar algún elemento, se selecciona como datos de entrada los "bordes" de la clase.
![[Pasted image 20250925151633.png]]
#### Grafos causa-efecto
- para probar requisitos que se especifican como diferentes combinaciones de condiciones que generan diferentes resultados
- Se puede determinar la cantidad de combinaciones posibles y se puede reducir de forma sistemática un subconjunto
- El número de causas-efecto analizados determinarán la complejidad del diagrama

#### Pruebas de caso de uso

- Técnica donde las pruebas se derivan del caso de uso, que proporcionan la manera de usar el sistema
- Los casos de uso dejan claro todo lo que debe hacer el sistema

![[Pasted image 20250925152145.png]]

## Técnicas de prueba (basados en la experiencia)


#### Predicción de errores
- Se basan en el conocimiento y la experiencia del tester, que ayudan a derivar casos de pruebas que anticipen equivocaciones, defectos, fallos.
- Incluye
	- Como ha funcionado la aplicación similar en el pasado
	- Tipo de equivocaciones comunes en las etapas de desarrollo
	- Fallos que se han producido en otras aplicaciones


#### Basadas en listas de comprobación
- Las pruebas se derivan de una lista de comprobación de elementos de alto nivel que se deben anotar, revisar, recordar para verificar el sistema.![[Pasted image 20250925152435.png]]
![[Pasted image 20250925152501.png]]


#### Pruebas exploratorias
- Las pruebas se realizan como pruebas informales (no predefinidas).
- El diseño y la ejecución se generan de forma simultanea durante la ejecución de la prueba.
![[Pasted image 20250925152558.png]]

[[Pruebas Happy Path]]



![[Pasted image 20251009192622.png]]
- TC -> Test Case
- TS -> ToolShop
- 002 -> Número de historia de usuario
- 01 -> Numero de caso de prueba de esa historia de usuario


- Escenarios posibles para la historia de usuario 1

| User story | Escenario identificado                        | Condiciones /datos prueba    |
| ---------- | --------------------------------------------- | ---------------------------- |
| 002        | Happy path - registración válida              | John, Doe, john.doe@mail.com |
| 002        | Falta un campo obligatorio                    |                              |
| 002        | Registrar mail existente                      |                              |
|            | Usar fecha de nacimiento con formato inválido |                              |
