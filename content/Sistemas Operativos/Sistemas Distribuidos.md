# Sistemas Distribuidos

%%
Date:: [[2024-09-06]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

## Definición de Sistemas Distribuidos

Un sistema distribuido es un conjunto de computadores independientes que están conectados entre sí y coordinan sus acciones mediante el intercambio de mensajes. Estos sistemas permiten que múltiples máquinas trabajen de forma cooperativa para resolver problemas que, de otro modo, no podrían ser resueltos de manera eficiente por un solo equipo.

## Características Principales

1. **Recursos compartidos**
    - Los sistemas distribuidos permiten que varios sitios o nodos compartan recursos como memoria, capacidad de procesamiento, datos y dispositivos periféricos.
    - Un usuario de un sitio puede acceder y utilizar los recursos de otro sitio, maximizando la eficiencia y el aprovechamiento del sistema en su totalidad.
2. **Velocidad de procesamiento**
    - Estos sistemas permiten la división de tareas complejas en subcálculos más pequeños, los cuales pueden ser distribuidos a diferentes sitios para que sean procesados simultáneamente.
    - El procesamiento paralelo acelera la ejecución de grandes cantidades de cálculos, lo que permite la resolución de problemas en menor tiempo.
3. **Confiabilidad**
    - Una de las grandes ventajas de los sistemas distribuidos es su confiabilidad. Si un nodo del sistema falla, los otros nodos pueden seguir funcionando, asegurando que el sistema en su conjunto continúe operativo.
    - La redundancia y la distribución de tareas entre múltiples nodos proporcionan resiliencia ante fallos parciales.
4. **Comunicación**
    - Los sistemas distribuidos se interconectan a través de redes de comunicación, lo que les permite intercambiar información y coordinar sus actividades.
    - Los procesos en diferentes sitios pueden comunicarse entre sí mediante protocolos de red, asegurando una colaboración efectiva.

### Ejemplos de Uso

Los sistemas distribuidos se utilizan en una gran variedad de aplicaciones, tales como redes de telecomunicaciones, computación en la nube, sistemas de archivos distribuidos (como Google File System), e-commerce, y servicios de almacenamiento en la nube como Amazon S3.

---

## Sistemas de Tiempo Real

Los sistemas de tiempo real son una subcategoría de los sistemas operativos y arquitecturas de computadoras. Su principal objetivo es garantizar que los procesos críticos se ejecuten dentro de plazos de tiempo definidos.

### Características Principales

1. **Procesos Prioritarios**
    - En un sistema de tiempo real, el usuario pasa a un segundo plano; lo que realmente importa es que los procesos se ejecuten cuando sea necesario, cumpliendo con los tiempos establecidos.
2. **Subutilización de Recursos**
    - Aunque pueda parecer contraproducente, estos sistemas pueden mantener recursos subutilizados para garantizar que siempre estén disponibles cuando se requieran, evitando retrasos en la respuesta.
3. **Entornos de Uso**
    - Se utilizan en aplicaciones muy específicas donde los datos o eventos deben ser procesados en tiempo real, como el control de tráfico aéreo, sistemas de bolsa de valores, o control de procesos industriales.
4. **Requisitos de Tiempo Estricto**
    - Estos sistemas tienen requisitos de tiempo de operación muy estrictos. Cualquier desviación en la ejecución de los procesos puede generar fallos en el sistema.
    - Se diseñan para situaciones críticas donde un retraso en el procesamiento de datos puede tener consecuencias graves, como en aplicaciones médicas o de seguridad.

### Ejemplos de Uso

Los sistemas de tiempo real se encuentran en sectores como:
- Control de tráfico aéreo
- Sistemas médicos de monitoreo
- Automatización industrial
- Bolsa de valores
