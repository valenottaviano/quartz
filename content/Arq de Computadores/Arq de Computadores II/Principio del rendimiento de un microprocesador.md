# Principio del rendimiento de un microprocesador

%%
Date:: [[2024-03-15]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[]]
%%

[Bibliografía - Principio del rendimiento del procesador](https://seo.unsta.edu.ar/pluginfile.php/79978/mod_folder/content/0/1.3.%20Principio%20del%20rendimiento%20del%20procesador.pdf)

- Objetivo
	- Determinar la efectividad de un sistema completo e hardware y software 
	- El rendimiento tiene un papel decisivo en la compra del equipo.
- Es difícil medir el rendimiento 
	- No existe una métrica única capaz de englobar todos los parámetros de un sistema complejo
	- Depende de la aplicación de dicho equipo

>[!important] Objetivo
>Comprender cómo los diversos elementos hardware y software de un computador afectan al rendimiento global del sistema y conocer las diferentes medidas de rendimiento.

- El objetivo de medir el rendimiento es
	- Por qué diferentes hardware son mejores que otros para diferentes programas
	- Qué factores del rendimiento están relacionados con el hardware 
	- Cómo afecta el juego de instrucciones en el rendimiento.

- **Benchmarking**
	- Comparación de un producto/servicio contra un producto estándar o *gold standard*.
	- Se definen ciertas métricas de rendimientos, y las comparo.

## Definiciones
- **Tiempo de ejecución tiempo de respuesta:** Tiempo que tarda en ejecutarse un programa.
- **Rendimiento (Throughput):** Cantidad de programas que se pueden ejecutar por unidad de tiempo.
	- 1/Tiempo de ejecución
- **Métrica**
	- Cualquier consideración sobre el rendimiento pasa por la medición del tiempo necesario para ejecutar un código.
	- **Tiempo de CPU**
		- Tiempo necesario para ejecutar un código, teniendo en cuenta únicamente el trabajo de CPU
		- Depende de número de instrucciones, CPI, frecuencias de reloj.
	- **CPI** (Ciclos por instrucción)
		- $$\sum_{i=1}^nCPI_i\cdot C_i$$
		- Donde $n$ es el número de tipos de instrucción
		- $CPI_i$ son los ciclos necesarios para ejecutar las instrucciones del tipo $i$
		- $C_i$ es el número de instrucciones del tipo $i$
	- **MIPS**
		- Medida que indica los millones de operaciones por segundo
		- Esta medida es inútil si no está normalizada respecto a tiempo de ejecución del programa en una máquina
	- **MFLOPS**
		- Medida que indica los millones de operaciones en coma flotante por segundo