# Unix Linux

%%
Date:: [[2024-10-04]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

#### 1. **Introducción a Unix/Linux**

Unix y Linux son sistemas operativos de tipo **multitarea**, **multiusuario**, diseñados para ofrecer una alta flexibilidad y eficiencia. Ambos sistemas son conocidos por su estabilidad, seguridad y capacidad para gestionar múltiples procesos y usuarios de manera simultánea.

- **Unix**: Creado en los años 70 en AT&T Bell Labs, se diseñó como un sistema operativo portátil, multitarea y multiusuario. Su diseño modular y basado en capas influyó en muchos sistemas operativos modernos.
- **Linux**: Desarrollado por Linus Torvalds en 1991, es un sistema operativo de código abierto que comparte muchas características de Unix. Se destaca por su adaptabilidad, ya que puede ejecutarse en una gran variedad de arquitecturas de hardware.

#### 2. **Estructura del Sistema Unix/Linux**
![[Pasted image 20241004202130.png]]
La arquitectura de Unix/Linux se organiza en varios niveles:

- **Hardware**: En la base, el hardware se comunica con el sistema a través de controladores de dispositivos.
- **Núcleo (Kernel)**: Es el corazón del sistema operativo. Gestiona los recursos del sistema, como la memoria, los procesos y los dispositivos de entrada/salida. Existen dos tipos de núcleos en Linux:
    - **Núcleo monolítico**: Todo el sistema operativo funciona en un solo espacio de memoria y modo kernel.
    - **Modularidad del kernel**: En Linux, el kernel es modular, lo que permite cargar y descargar módulos dinámicamente (DLKM) según sea necesario.
	![[Pasted image 20241004202223.png]]
	![[Pasted image 20241004202302.png]]
- **Interfaz de llamadas al sistema**: Define la forma en que las aplicaciones y programas de usuario interactúan con el sistema operativo.
- **Shell y Librerías**: El shell actúa como intérprete de comandos para que el usuario interactúe con el sistema, mientras que las librerías ofrecen funciones reutilizables para los programas de usuario.
- **Programas de usuario**: Son las aplicaciones que corren en el sistema y que pueden hacer uso de los servicios del sistema operativo.

#### 3. **Subsistemas de Unix/Linux**

- **Subsistema de Archivos**: Gestiona el almacenamiento de datos, controlando la creación, apertura, modificación y borrado de archivos. Los sistemas Unix/Linux permiten acceder a dispositivos de almacenamiento como si fueran archivos, con dos modos de acceso principales:
    - **Bloques**: Para acceso a discos rígidos.
    - **Caracteres**: Para dispositivos como terminales.
- **Gestión de Procesos**: Coordina la planificación de los procesos, su ejecución, sincronización y comunicación entre ellos. El sistema también puede gestionar señales asíncronas para interrumpir o modificar la ejecución de un proceso.
- **Gestión de Memoria**: Controla qué procesos están en la memoria principal, usando técnicas como la **memoria virtual** y el **swapping** (intercambio de procesos entre la memoria y el disco cuando la memoria física es insuficiente).
    

#### 4. **Ventajas de Unix/Linux**

- **Multitarea y multiusuario**: La capacidad de ejecutar múltiples procesos y permitir varios usuarios simultáneamente es una de las principales ventajas de Unix/Linux.
- **Modularidad y flexibilidad**: Los sistemas basados en Linux permiten configurar el kernel para necesidades específicas, añadiendo o quitando módulos sin reiniciar el sistema.
- **Portabilidad**: Linux es altamente portable y puede ejecutarse en una amplia variedad de arquitecturas de hardware, desde servidores de alto rendimiento hasta dispositivos móviles.
- **Código abierto**: El acceso al código fuente y su comunidad activa han permitido que Linux sea adaptado y optimizado para diferentes entornos, incluyendo supercomputadoras y sistemas embebidos.

