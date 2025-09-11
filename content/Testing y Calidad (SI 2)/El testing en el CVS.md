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

- flujo secuencial y lineal de actividades
- cada fase comienza solo cuando termina la anterior
![[Pasted image 20250911194251.png]]
## Modelo en V

![[Pasted image 20250911194325.png]]
- Una vez que se codifica, comienza la etapa de pruebas (rama derecha)
- Relacionado con el principio shift left testing (comenzar lo antes posible)
## Niveles de prueba 
(agregar gráfico de la presentación)

- pruebas unitarias
- pruebas de integración
- pruebas de sistemas
- pruebas de aceptación
## Tipos de prueba

- pruebas funcionales
- pruebas no funcionales
- pruebas de estructura
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
- Pruebas
- Producción


