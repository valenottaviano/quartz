# El testing en el Ciclo de Vida del Software

%%
Date:: [[2025-09-11]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%

## Modelo de ciclo de vida
- Modelo de referencia que contiene los procesos, actividades y tareas involucradas en el desarrollo, operación y mantenimiento de un producto de software y que abarca toda la vida del sistema, desde la definición de sus requisitos hasta el final del uso.
- Tipos
	- secuencial o waterfall
	- modelo en V
	- incremental
## Modelo Waterfall

- Describe el proceso de desarrollo de software como un flujo secuencial y lineal de actividades.
- cada fase comienza solo cuando termina la anterior
![[Pasted image 20250911194251.png]]
## Modelo en V

![[Pasted image 20250911194325.png]]
- Es una evolución del método en cascada tradicional. Dice que las pruebas deben comenzarse lo más pronto posible.
	- Integra las pruebas en cada fase del ciclo de vida.
- Una vez que se codifica, comienza la etapa de pruebas (rama derecha)
- **Relacionado con el principio shift left testing (comenzar lo antes posible)**

[[Fundamentos del Testing#Verificación vs Validación]]
### Niveles de prueba en V Model 
![[Pasted image 20250922091204.png]]
![[Pasted image 20250922091228.png]]
### Tipos de prueba
Grupo de actividades de pruebas destinadas a probar características puntuales de un software o parte del mismo, con un objetivo de prueba específico.
Un tipo de prueba puede tener lugar en uno o más niveles de prueba
- pruebas funcionales
- pruebas no funcionales
- pruebas de estructura
![[Pasted image 20250922091350.png]]
![[Pasted image 20250922091417.png]]
### Alpha testing vs Beta testing

| Aspecto                               | Alpha Testing                                                                              | Beta Testing                                                                                  |
| ------------------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------- |
| **Definición**                        | Pruebas internas realizadas por el equipo de desarrollo y QA antes de liberar el producto. | Pruebas externas realizadas por un grupo de usuarios reales antes del lanzamiento oficial.    |
| **Entorno**                           | Se realiza en un entorno controlado, dentro de la organización.                            | Se realiza en un entorno real de los usuarios finales.                                        |
| **Responsables**                      | Desarrolladores, testers internos, equipo de QA.                                           | Usuarios externos seleccionados (clientes, testers voluntarios).                              |
| **Acceso al código**                  | El equipo tiene acceso completo al código fuente y puede corregir errores inmediatamente.  | Los usuarios no tienen acceso al código; solo prueban la aplicación/producto.                 |
| **Objetivo**                          | Detectar errores críticos, problemas de funcionalidad y estabilidad en etapas tempranas.   | Obtener retroalimentación del usuario, validar usabilidad y aceptación en condiciones reales. |
| **Momento en el ciclo de vida**       | Antes de la fase Beta, en etapas previas al lanzamiento público.                           | Después del Alpha, justo antes del lanzamiento oficial.                                       |
| **Duración**                          | Puede ser más larga y repetitiva, abarcando múltiples iteraciones internas.                | Más corta y enfocada, normalmente limitada en tiempo para obtener feedback rápido.            |
| **Tipo de errores detectados**        | Errores técnicos, bugs graves, problemas de rendimiento.                                   | Problemas de usabilidad, experiencia de usuario, compatibilidad en entornos reales.           |
| **Usuarios involucrados**             | Personal interno con conocimiento técnico.                                                 | Usuarios reales sin experiencia técnica específica.                                           |
| **Nivel de estabilidad del producto** | Producto aún inestable, puede tener múltiples fallos.                                      | Producto más estable y cercano a la versión final.                                            |
## División de ambiente

- Desarrollo
	- Es donde las áreas de sistemas realizan los desarrollos, en distintas plataformas
	- En general es un ambiente manejado por desarrolladores, donde  cargan diferentes herramientas frameworks, componentes, etc., los usen o no.
	- Normalmente no está controlado en forma muy rígida.
- Pruebas|Testing|Homologación|Pre-producción|Staging
	- Donde se implementan los cambios realizados en desarrollo.
	- Tiene que ser exacto al de producción, debe haber alguna garantía que lo que se prueba en este ambiente, se comportará de la misma manera que cuando el usuario lo ejecute en producción.
	- En cuanto a los datos disponibles en este ambiente, tienen que ser análogos a los de producción, siempre que no sean datos sensibles.
- Producción
	- Es donde opera el sistema.
	- Es donde se realiza el negocio en cuestión.


