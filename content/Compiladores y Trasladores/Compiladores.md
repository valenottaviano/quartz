# Compiladores

%%
Date:: [[2024-08-12]]
Course:: [[Compiladores y Trasladores]]
Source:: [[]]
%%

- Un compilador es un tipo especial de traductor en el que el lenguaje fuente es un lenguaje de programación de alto nivel y el lenguaje objeto es un lenguaje de bajo nivel (ensamblador o código de máquina)


## Características de los compiladores

| **Características**              | **Descripción**                                                                                                       |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Traducción**                   | Convierte el código fuente escrito en un lenguaje de programación a un lenguaje máquina.                              |
| **Optimización**                 | Mejora la eficiencia del código generado al reducir el tiempo de ejecución y el uso de memoria.                       |
| **Análisis léxico**              | Divide el código fuente en tokens, que son las unidades básicas del lenguaje (palabras clave, identificadores, etc.). |
| **Análisis sintáctico**          | Verifica la estructura del código fuente para asegurar que siga las reglas gramaticales del lenguaje.                 |
| **Análisis semántico**           | Comprueba que el código fuente tenga sentido lógico, verificando tipos de datos, declaraciones, etc.                  |
| **Generación de código**         | Produce el código objeto o código máquina a partir del código intermedio o abstracto.                                 |
| **Enlazado (Linking)**           | Combina varios archivos objeto en un solo ejecutable, resolviendo referencias externas.                               |
| **Portabilidad**                 | Capacidad del compilador para generar código para diferentes plataformas (cross-compilation).                         |
| **Errores y advertencias**       | Identifica y reporta errores y advertencias en el código fuente durante el proceso de compilación.                    |
| **Compatibilidad con lenguajes** | Soporte para múltiples lenguajes de programación o versiones específicas de un lenguaje.                              |
| **Interfaz de usuario**          | Proporciona herramientas y comandos para interactuar con el proceso de compilación (como una CLI o IDE).              |
| **Tiempo de compilación**        | El tiempo que tarda en compilar el código fuente, lo cual puede afectar la productividad del desarrollador.           |
| **Depuración**                   | Incluye herramientas o modos de compilación que facilitan la identificación de errores en el código fuente.           |

## Características de los intérpretes
| **Características**        | **Descripción**                                                                 |
|----------------------------|---------------------------------------------------------------------------------|
| **Ejecución directa**       | Ejecuta el código fuente línea por línea sin necesidad de convertirlo a código máquina previamente. |
| **No requiere compilación** | No genera un archivo ejecutable; el código es interpretado directamente durante su ejecución. |
| **Portabilidad**            | Los programas interpretados pueden ser ejecutados en cualquier plataforma que tenga el intérprete adecuado. |
| **Interactividad**          | Permite la ejecución de comandos y pruebas en un entorno interactivo, útil para desarrollo y depuración. |
| **Análisis léxico y sintáctico** | Realiza el análisis del código en tiempo real, mientras se ejecuta, para identificar errores. |
| **Menor tiempo de inicio**  | El tiempo de inicio del programa es más rápido, ya que no hay necesidad de compilar antes de ejecutar. |
| **Velocidad de ejecución**  | Generalmente, es más lento que un programa compilado porque analiza y ejecuta el código en tiempo real. |
| **Flexibilidad**            | Permite modificaciones y ejecuciones rápidas sin necesidad de recompilar el código, lo que facilita el desarrollo rápido. |
| **Gestión de memoria dinámica** | A menudo incluye manejo automático de memoria, como recolección de basura, para facilitar la programación. |
| **Errores y advertencias**  | Los errores son detectados en tiempo de ejecución, lo que puede facilitar o dificultar la depuración según el contexto. |
| **Compatibilidad con lenguajes** | Soporte para múltiples lenguajes de programación, aunque típicamente se especializa en uno solo. |
| **Seguridad**               | Algunos intérpretes permiten ejecutar código en un entorno controlado o "sandbox", mejorando la seguridad. |
| **Usos comunes**            | Se utilizan frecuentemente en scripts, lenguajes de shell, y aplicaciones web donde la rapidez en el desarrollo es crucial. |

## Diferencias entre un compilador y un intérprete
| **Característica**        | **Compilador**                                                                    | **Intérprete**                                                                          |
| ------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| **Modo de ejecución**     | Traduce todo el código fuente a código máquina antes de su ejecución.             | Ejecuta el código fuente línea por línea sin necesidad de traducción previa.            |
| **Resultado**             | Genera un archivo ejecutable.                                                     | No genera un archivo ejecutable; el código es interpretado en tiempo de ejecución.      |
| **Tiempo de ejecución**   | Más rápido durante la ejecución porque ya está traducido a código máquina.        | Más lento durante la ejecución porque traduce y ejecuta el código al mismo tiempo.      |
| **Tiempo de compilación** | Requiere un tiempo de compilación antes de la ejecución, que puede ser largo.     | No requiere tiempo de compilación, solo ejecución directa.                              |
| **Errores**               | Los errores se detectan en tiempo de compilación, antes de ejecutar el programa.  | Los errores se detectan durante la ejecución, lo que puede interrumpir el programa.     |
| **Portabilidad**          | El código compilado es específico de la plataforma, menos portable.               | El código fuente es más portable, solo requiere un intérprete compatible.               |
| **Modificación y prueba** | Requiere recompilar después de cada modificación antes de poder probar el cambio. | Permite modificar y ejecutar el código inmediatamente, ideal para desarrollo rápido.    |
| **Usos comunes**          | Utilizado en aplicaciones de alto rendimiento donde la velocidad es crucial.      | Común en desarrollo de scripts, aplicaciones web, y entornos de desarrollo interactivo. |
| **Manejo de memoria**     | Generalmente, el programador tiene control sobre la memoria.                      | A menudo incluye manejo automático de memoria, como la recolección de basura.           |
| **Salida**                | Proporciona un binario o código objeto que puede distribuirse.                    | No produce un binario; el código debe ser distribuido en su forma original.             |

[[Estructura de un compilador]]