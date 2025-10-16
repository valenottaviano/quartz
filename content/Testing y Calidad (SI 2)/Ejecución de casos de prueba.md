
# Ejecución de casos de prueba

%%
Date:: [[2025-10-16]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%

- Entorno que contiene instalaciones, hardware, software, firmware, procedimientos necesarios para realizar una prueba.

1. Registrar versiones, entornos y objetos de prueba
2. Ejecutar pruebas manuales y/o automatizadas
3. Registra resultados de las pruebas
4. Analizar anomalías para establecer sus causas (fallos, problemas de entornos, etc)
5. Informar sobre defectos encontrados


### Resultados posibles
- Para que resulte exitoso, todos los pasos deben tener resultado exitoso.
	- Un paso no exitoso, puede ser candidato posible.
- Tipos de resultados
	- Aprobado
	- Fallado
	- Bloqueado: No logro cumplir con los pre requisitos
	- N/A: Si ya no aplica o hubieron cambios en la funcionalidad


### Suite de prueba
- Conjunto de caso de prueba o procedimientos de prueba
- Es la agrupación en un conjunto de pruebas generalmente basada en cuándo se ejecutan las pruebas
- Pruebas smoke
	- Subconjunto de todos los casos de prueba que cumple la funcionalidad principal de un componente o sistema, para determinar que las funciones más cruciales funcionan correctamente, sin ir a los detalles más finos.
	- Veo que funcione lo más importantes funcionen
- Pruebas regresión
	- Relacionado con el cambio, se orientan a detectar si se han introducido defectos en zonas no modificadas del software
	- Se realiza después de correcciones en el software 