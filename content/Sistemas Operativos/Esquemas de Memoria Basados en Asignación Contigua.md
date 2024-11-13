# Esquemas de Memoria Basados en Asignación Contigua

%%
Date:: [[2024-11-13]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

### 1. Introducción a la Asignación Contigua de Memoria

La **asignación contigua de memoria** es un esquema en el que el sistema operativo asigna un bloque de memoria contiguo a cada proceso. Este modelo implica que todo el espacio necesario para el proceso se reserva de manera continua en la memoria principal, lo que facilita el acceso directo y ordenado al área de memoria del proceso. Sin embargo, también plantea desafíos relacionados con el manejo eficiente de la memoria, especialmente en sistemas multitarea y multiprogramados.

### 2. Características de la Asignación Contigua

- **Memoria Contigua**: La memoria asignada a un proceso está en un bloque continuo de direcciones, lo que simplifica el cálculo de direcciones de memoria y reduce la complejidad en el acceso.
- **Simples y Eficientes**: Los esquemas de asignación contigua permiten un acceso más rápido, ya que las direcciones están organizadas de manera consecutiva y sin interrupciones, lo cual reduce los cálculos de reubicación.
- **Problemas de Fragmentación**: Este esquema sufre de **fragmentación externa**, ya que, a medida que los procesos se asignan y liberan, se generan pequeños fragmentos de memoria inutilizables dispersos en el espacio total.

### 3. Componentes de la Asignación Contigua

- **Registro Base y Registro Límite**: Para controlar el acceso a la memoria, el hardware utiliza dos registros:
    - **Registro Base**: Contiene la dirección de inicio del bloque de memoria asignado al proceso.
    - **Registro Límite**: Contiene la longitud del bloque asignado, lo que permite al sistema verificar que el proceso no acceda a direcciones fuera de sus límites.
    - Estos registros solo son accesibles en **modo privilegiado**, garantizando la protección del espacio de memoria de cada proceso.

### 4. Tipos de Asignación Contigua

Existen dos tipos principales de asignación contigua en sistemas operativos:

- **Asignación Contigua Estática**:
    - La asignación de memoria se realiza al inicio de la ejecución del proceso y permanece sin cambios durante su vida útil.
    - **Ventaja**: Simplicidad en la administración, ya que el proceso siempre tiene el mismo bloque de memoria asignado.
    - **Desventaja**: Poco flexible y no permite ampliar el espacio de memoria del proceso en tiempo de ejecución.
- **Asignación Contigua Dinámica**:
    - La asignación de memoria puede cambiar durante la ejecución del proceso.
    - **Ventaja**: Permite aumentar o reducir el espacio de memoria de acuerdo con las necesidades del proceso, haciendo un mejor uso de la memoria disponible.
    - **Desventaja**: Puede ser más compleja de gestionar debido a la reubicación de direcciones y la necesidad de administrar espacios libres en tiempo real.

### 5. Políticas de Asignación de Espacio

El sistema operativo debe decidir cómo asignar los bloques de memoria contigua a los procesos. Las políticas de asignación más comunes son:

- **Mejor Ajuste (Best-Fit)**:
    - Se asigna el bloque de memoria libre más pequeño en el que el proceso pueda caber.
    - **Ventaja**: Minimiza el desperdicio de espacio grande al asignar bloques pequeños.
    - **Desventaja**: Conduce a la creación de pequeños fragmentos de memoria (fragmentación externa), los cuales no pueden usarse para procesos mayores.
- **Peor Ajuste (Worst-Fit)**:
    - Se asigna el bloque de memoria libre más grande disponible.
    - **Ventaja**: Evita la creación de fragmentos pequeños al reservar los bloques más grandes.
    - **Desventaja**: Puede generar fragmentación si el bloque más grande se divide repetidamente, dejando espacio insuficiente para otros procesos.
- **Primer Ajuste (First-Fit)**:
    - Se asigna el primer bloque de memoria libre que sea lo suficientemente grande para el proceso.
    - **Ventaja**: Es más rápido que los otros enfoques, ya que basta con encontrar el primer bloque adecuado.
    - **Desventaja**: No siempre es el más eficiente en términos de uso de memoria, ya que puede dejar bloques grandes desaprovechados.

### 6. Ventajas y Desventajas de la Asignación Contigua

#### Ventajas

- **Acceso Rápido y Directo**: La estructura contigua de los bloques facilita el acceso a las direcciones de memoria y reduce la complejidad en el cálculo de direcciones.
- **Simplicidad**: Los esquemas de asignación contigua son fáciles de implementar y requieren menor gestión comparados con esquemas no contiguos.

#### Desventajas

- **Fragmentación Externa**: A medida que se asignan y liberan bloques, se crean fragmentos pequeños e inutilizables en la memoria, lo cual disminuye la eficiencia del uso de la memoria.
- **Dificultad de Crecimiento**: No es fácil extender el tamaño de un proceso sin la posibilidad de mover otros procesos, especialmente si la memoria ya está fragmentada.

### 7. Solución a la Fragmentación Externa: Compactación

Para mitigar el problema de la fragmentación externa, los sistemas pueden aplicar un proceso de **compactación de memoria**:

- **Compactación de Memoria**:
    - La compactación es el proceso de reorganizar los bloques de memoria para juntar los espacios libres en un solo bloque continuo.
    - **Ventaja**: Mejora la eficiencia de la memoria y reduce la fragmentación externa.
    - **Desventaja**: Es una operación costosa y consume tiempo, ya que implica mover procesos y actualizar registros.

### 8. Ejemplo de Asignación Contigua en un Sistema Operativo

En un sistema operativo que utiliza asignación contigua, cada proceso recibe un bloque continuo de memoria. A continuación, un ejemplo de cómo podría verse la asignación:

1. **Proceso A** ocupa las direcciones de memoria de 0 a 500.
2. **Proceso B** ocupa las direcciones de 501 a 1000.
3. Cuando el proceso A termina, el espacio de 0 a 500 queda libre.
4. Si se carga un nuevo proceso (C) que requiere solo 300 direcciones de memoria, podría colocarse en el espacio de 0 a 299.
5. Con el tiempo, si se eliminan y agregan procesos, pueden quedar espacios vacíos dispersos, causando fragmentación.