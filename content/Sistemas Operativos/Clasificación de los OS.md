# Clasificación de los OS

%%
Date:: [[2024-10-04]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

![[Pasted image 20241004201636.png]]

Los sistemas operativos (SO) pueden clasificarse de diversas maneras según sus características y funcionalidad. A continuación se presenta un resumen de las principales clasificaciones basadas en el documento:

#### 1. **Por número de usuarios**
- **Monousuario**: Permite que un solo usuario interactúe con el sistema a la vez (ejemplo: MS-DOS).
- **Multiusuario**: Permite que varios usuarios trabajen simultáneamente en el sistema, gestionando recursos de manera eficiente (ejemplo: Linux, Unix).

#### 2. **Por número de tareas**
- **Monotarea**: Solo ejecuta un proceso a la vez (ejemplo: sistemas operativos antiguos como MS-DOS).
- **Multitarea**: Permite la ejecución de múltiples procesos simultáneamente, compartiendo los recursos del sistema (ejemplo: Windows, macOS).

#### 3. **Por número de procesadores**
- **Uniproceso**: Utiliza un único procesador para ejecutar las tareas.
- **Multiproceso**: Emplea varios procesadores, ya sea de manera **simétrica** (todos los procesadores ejecutan tareas de forma independiente) o **asimétrica** (un procesador gestiona las tareas y distribuye la carga a los demás).

#### 4. **Por propósito**
- **De propósito específico**: Diseñados para realizar tareas concretas (ejemplo: sistemas embebidos en electrodomésticos o dispositivos médicos).
- **De propósito general**: Pueden ejecutar múltiples tipos de aplicaciones y tareas (ejemplo: sistemas operativos de PC como Windows o Linux).

#### 5. **Por diseño**
- **Monolítico**: Todos los componentes del SO están integrados en un único programa. Son difíciles de modificar (ejemplo: primeros sistemas Unix).![[Pasted image 20241004201736.png| 300]]
- **Modular**: El SO se organiza en módulos que pueden ser cargados o descargados según sea necesario (ejemplo: Linux con módulos dinámicos). ![[Pasted image 20241004201801.png | 300]]
- **Por capas**: Organiza el SO en una jerarquía de capas, donde cada capa interactúa únicamente con la capa superior e inferior (ejemplo: algunos sistemas Unix). ![[Pasted image 20241004201830.png]]
- **Micronúcleo**: Solo el núcleo esencial del SO se ejecuta en modo privilegiado; el resto de las funciones están en procesos de usuario (ejemplo: sistemas QNX). a![[Pasted image 20241004201900.png]]

#### 6. **Por tipo de desarrollo**
- **Cerrados**: Desarrollados y mantenidos por una única entidad, sin acceso al código fuente para modificaciones externas (ejemplo: Windows).
- **Abiertos**: Su código fuente está disponible para la comunidad, permitiendo modificaciones y adaptaciones (ejemplo: Linux).
