# Tipos de Compiladores

%%
Date:: [[2024-09-09]]
Course:: [[Compiladores y Trasladores]]
Source:: [[Compiladores]]
%%

## Proceso de compilación

El proceso de compilación consiste en convertir un programa escrito en un lenguaje de alto nivel a un código ejecutable o código de máquina. Este proceso se divide en dos grandes fases: **análisis** y **síntesis**.

[[Estructuras de datos empleadas en un compilador]]

## Clasificación de compiladores

1. **Compiladores de una sola pasada:** Generan el código de máquina en una única lectura del código fuente.
2. **Compiladores de varias pasadas:** Realizan múltiples lecturas del código fuente antes de generar el código de máquina.
3. **Compiladores cruzados:** Generan código para un sistema diferente del que se está utilizando para el desarrollo.
4. **Compiladores optimizadores:** Realizan modificaciones en el código para mejorar su eficiencia sin alterar la funcionalidad original.
5. **Compiladores JIT (Just In Time):** Compilan partes del código a medida que se necesitan durante la ejecución del programa, combinando aspectos de compilación e interpretación.
6. **Compiladores incrementales:** Generan código objeto instrucción por instrucción a medida que se escribe el código fuente.
7. **Meta compiladores:** Estos programas reciben especificaciones de un lenguaje y generan compiladores para dicho lenguaje.
8. **Descompiladores:** Realizan el proceso inverso a la compilación, convirtiendo código máquina en código de alto nivel.

## Herramientas auxiliares del compilador

- **Preprocesador:** Se encarga de incluir archivos, expandir macros y eliminar comentarios.
- **Linker (Enlazador):** Une los diferentes archivos objeto y las bibliotecas para generar el archivo ejecutable.
- **Depurador:** Permite seguir la ejecución del programa paso a paso para identificar errores.
- **Ensamblador:** Convierte el código en lenguaje ensamblador a código máquina ejecutable.

