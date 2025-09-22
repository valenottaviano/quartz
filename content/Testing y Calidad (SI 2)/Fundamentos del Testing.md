# Fundamentos del Testing

%%
Date:: [[2025-08-28]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%

### Repaso

- Los criterios de calidad de un software siempre dependen de la naturaleza y el contexto.
	- Ej: Una app de home banking deberá tener criterios de calidad relacionado con la seguridad.
- Competencias y habilidades 
	- Competencia: Conocimientos y destrezas para ejercer una profesión o resolver problemas de forma autónoma y flexible
		- Es una combinación entre: saber conocer, saber ser y saber hacer.
	- Soft skills
	- Hard skills
- Definiciones de testing (ambas complementarias)
	- Definición positiva
		- Happy path :D
		- Dado un sistema, me fijo si cumple con lo que tiene que hacer. 
		- Para lo que ha sido creado, funciona?
	- Definición negativa
		- El sistema, tiene fallas? Lo puedo romper por algún lado?
	- Cuando se va a testear un software ya terminado, **arrancamos por el core del negocio**.
		- Hay que entender el punto fuerte del negocio, lo que es imprescindible.

## Verificación vs Validación

- Verificación
	- **Pregunta clave**: _“¿Estamos construyendo el producto correctamente?”_
	- Se centra en comprobar que el software cumple con las **especificaciones** y requisitos definidos en documentos de diseño, arquitectura o casos de uso.
 - Validación
	- **Pregunta clave**: _“¿Estamos construyendo el producto correcto?”_
	- Se enfoca en comprobar que el software satisface las **necesidades reales del usuario o cliente**.
	- La validación la realiza el cliente!!!

## Qué es el testing en software?

*Verificación dinámica que un programa proporciona los comportamientos esperados en un conjunto finito de casos de prueba, seleccionados adecuadamente del dominio de ejecución, generalmente infinito.*
- Verificación dinámica
	- Es dinámico porque el testing es ejecutado para poder testear.
	- Estático sería si no hay ejecución
- Comportamientos esperados
	- Lo que está especificado en las historias de usuario, en los requerimientos.
	- Tengo que verificar que estos comportamientos esperados se cumplan
- Conjunto finito de casos de prueba
	- Tengo una selección de pruebas que decido realizar, y que las priorizo.
	- Debo decidir cuáles casos de prueba se van ejecutar
- Generalmente infinito
	- Existen casi infinitas posibilidades o caminos que se pueden realizar en un software complejo. De ahí la importancia de priorizarlas.


## Qué es probar?

- Probar es un proceso, no una actividad
- Se realizar durante todo el ciclo de desarrollo, con pruebas:
	- Pruebas estáticas
		- analizar los requerimientos, ver si hay incongruencias o falta de información.
	- Pruebas dinámicas
		- ejecuto el sistema y lo pongo a prueba.
- Se deben preparar: planifican antes, durante y después de la ejecución de pruebas.
	- Podemos perder muchísimo tiempo si no tenemos una buena planificación
- Actividades que implica "probar"
	- **Planificación y control:**
		- qué recursos voy a necesitar? cuál va a ser el alcance de la prueba? necesito hardware específico?
	- **Análisis y diseño:**
		- a partir de historias de usuario, se suelen plantear distintos escenarios, priorizo y los diseño.
	- **Implementación y ejecución:**
		- Una vez que tengo creado el diseño lo ejecuto
	- **Evaluación de criterios de salida**
		- Cuáles son los resultados del caso de prueba?
		- Vale la pena continuar con más casos de prueba?
	- **Generación de informes**
		- Informe sobre los casos de prueba realizados, los resultados y los análisis y recomendaciones finales
	- **Actividades de cierre de pruebas**
		- Estadísticas, informes finales.


## Por qué realizar testing?

- No es estrictamente necesario realizar testing, pero al no realizarlo se corre un riesgo altísimo. Riesgos que asumimos:
	- Pérdida de dinero.
	- Pérdida de tiempo, de usuarios, de programadores.
	- Reputación del negocio
	- Lesión o muerte, cuando el software está relacionado con máquinas, etc. 
- Razones por las que hacer testing
	- Permite identificar errores en la fase de desarrollo.
	- Asegura la confianza del usuario final y satisfacción al usar el software.
	- Asegura la calidad del producto y correcto funcionamiento.
	- Es necesario para mantener la reputación del negocio.

## Causas de los errores?

- Todos podemos equivocarnos. El desarrollo de código es un trabajo intelectual y somos humanos.
- Falta de experiencia. Ya sea en el desarrollo, en el relevamiento, al escribir los requerimientos, etc.
- Falta de comunicación entre los equipos, con el usuario.
- Requerimientos incompletos o cambiantes.
- Malentendidos o suposiciones.
- Complejidad del proyecto o nueva tecnología.

## Error, defecto y fallo
- Error
	- Acción humana que produce un resultado incorrecto.
	- Ej: el usuario tiene un error de tipeo, carga mal algo
- Defecto 
	- El error que se cometió, ahora se manifiesta como error en el código.
	- Puede ser que no tenga ningún impacto luego
- Fallo
	- Manifestación del defecto en el sistema.
	- Cuando el defecto si es procesado y arrastra ese error en otras cosas

## Principios generales del testing

1. El testing muestra la presencia de defectos, no su ausencia
	- Nosotros podemos afirmar que encontramos n cantidad de fallas, pero no podemos probar que no quedan. 
	- Podemos reducir la probabilidad de que continúen existiendo, pero nunca podremos afirmar la ausencia.
2. No es posible realizar un testing exhaustivo (conjunto infinito)
	- Podemos hacer una cantidad de pruebas, pero el número de casos en un sistema complejo tiende a infinito, pero nunca podremos abarcar todos
3. El testing debe comenzar lo antes posible
	- Deben empezar lo antes posible, junto con el desarrollo de software
	- **Shift left testing**
		- ![[Pasted image 20250904190642.png]]
4. Los defectos tienden a estar agrupados
	- Se ha llegado a esta conclusión por experiencia. Muchas veces alguna funcionalidad la desarrolla un equipo, y puede que ese equipo tenga un inconveniente.
5. La paradoja del pesticida
	- Si la prueba se repiten una y otra vez, tienden a perder su eficacia.
	- Para mantener la efectividad, hay que hacer cambios y modificarlas.
6. Las pruebas son dependientes del contexto
	- las pruebas se deben adaptar al contexto del software, no hay pruebas que sirvan para todos los sistemas.
7. Suponer que un sistema sin ninguna falla es útil
	- El sistema debe satisfacer las necesidades del cliente, no tiene sentido testearlo hasta el infinito.
	- Hacer testing no asegura que satisfaga las necesidades del cliente.