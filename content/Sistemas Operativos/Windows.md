# Windows

%%
Date:: [[2024-10-04]]
Course:: [[Sistemas Operativos]]
Source:: [[]]
%%

Windows es un sistema operativo desarrollado por Microsoft que ha evolucionado desde su primera versión en 1985 hasta convertirse en el sistema operativo más utilizado en computadoras personales a nivel mundial. Es un sistema **multitarea**, **multiusuario** y **gráfico**, diseñado para proporcionar una experiencia de usuario intuitiva y eficiente. A lo largo de los años, Windows ha incorporado características de seguridad, estabilidad y rendimiento que lo han hecho popular en entornos de oficina, hogares y empresas.

#### 2. **Estructura del Sistema Windows**

La arquitectura de Windows está dividida en dos modos principales: **Modo Usuario** y **Modo Kernel**. Esta separación ayuda a mejorar la seguridad y estabilidad del sistema.
![[Pasted image 20241004205150.png]]

- **Modo Kernel**: Es el nivel más privilegiado del sistema, responsable de gestionar el hardware y los recursos del sistema. Incluye:
    - **Capa de Abstracción de Hardware (HAL)**: Oculta las diferencias específicas del hardware, facilitando que Windows funcione en diferentes plataformas.
    - **Kernel**: Maneja las funciones del sistema operativo a bajo nivel, como la sincronización entre procesadores, la planificación de hilos y el manejo de interrupciones de hardware.
    - **Controladores de Dispositivos**: Traducen las peticiones del sistema operativo a instrucciones comprensibles para el hardware (por ejemplo, discos, impresoras, teclados).
- **Modo Usuario**: Es donde se ejecutan las aplicaciones y procesos que interactúan con el usuario. Incluye:
    - **Subsistema de DLLs (Dynamic-Link Libraries)**: Traduce las peticiones de las aplicaciones en llamadas internas al sistema operativo.
    - **Procesos de Soporte del Sistema**: Manejan tareas como la administración de sesiones de usuario, la planificación de tareas, servicios de impresión, entre otros.
    - **API de Windows (Win32/Win64)**: Ofrece a las aplicaciones acceso a las funcionalidades del sistema operativo.

#### 3. **Componentes Clave de Windows**

- **Sistema de Ventanas y Gráficos**: Windows es conocido por su **Interfaz Gráfica de Usuario (GUI)**, que facilita la interacción con el sistema mediante ventanas, iconos, menús y controles. Esta interfaz es parte del sistema en modo kernel, lo que asegura que funcione de manera eficiente y con acceso directo al hardware gráfico.
- **Ejecutor**: Este componente gestiona servicios clave del sistema operativo, como la gestión de procesos e hilos, la seguridad, la memoria y la entrada/salida. También maneja la comunicación entre procesos, asegurando que múltiples aplicaciones puedan ejecutarse simultáneamente sin interferencias.
- **Administración de Memoria y Procesos**: Windows utiliza una técnica llamada **paginación de memoria**, que permite que los programas se ejecuten aunque no quepan completamente en la memoria física, mediante el uso de un archivo de intercambio en el disco duro. Además, el **planificador de procesos** decide qué procesos deben ejecutarse en un momento dado, maximizando el uso del CPU.

![[Pasted image 20241004205235.png]]
#### 4. **Arquitectura de Seguridad**

Windows tiene una arquitectura de seguridad robusta diseñada para proteger el sistema y los datos de los usuarios:

- **Control de acceso**: Restringe el acceso a los recursos del sistema mediante autenticación y autorización de usuarios y procesos.
- **Servicios de seguridad**: Como el **Servicio de Autenticación Local (LSASS)** y el **Administrador de Control de Servicio**, que protegen las credenciales de usuario y los servicios esenciales del sistema.
- **Cifrado y protección de datos**: Windows ofrece varias tecnologías como BitLocker para cifrar datos y protegerlos de accesos no autorizados.

#### 5. **Modo de Compatibilidad**

Una de las características destacadas de Windows es su **compatibilidad con versiones anteriores** y otros sistemas operativos. Esto se logra a través de:

- **Máquina DOS Virtual (NTVDM)**: Permite ejecutar aplicaciones MS-DOS antiguas sobre versiones modernas de Windows.
- **WOW (Windows on Windows)**: Permite ejecutar aplicaciones de 16 bits en entornos de 32 o 64 bits.

#### 6. **Ventajas de Windows**

- **Amplia adopción**: Windows es el sistema operativo más utilizado en computadoras personales y tiene una amplia base de software compatible.
- **Facilidad de uso**: Su interfaz gráfica y la integración de servicios como el administrador de archivos y la barra de tareas facilitan su uso tanto para usuarios novatos como avanzados.
- **Soporte empresarial**: Windows incluye herramientas como **Active Directory** y soporte para servidores, lo que lo hace ideal para entornos empresariales.
- **Compatibilidad de software**: A lo largo de los años, Windows ha mantenido una gran compatibilidad hacia atrás, permitiendo a los usuarios ejecutar aplicaciones antiguas en versiones más nuevas del sistema.

#### 7. **Diferencias con Linux**

- **Modelo de kernel**: Mientras que Windows utiliza un kernel monolítico, Linux tiene un núcleo modular que permite cargar o descargar módulos en tiempo de ejecución.
- **Interfaz gráfica**: En Windows, la GUI está integrada en el kernel, mientras que en Linux se ejecuta en el espacio de usuario, lo que otorga más flexibilidad en Linux para servidores o sistemas sin entorno gráfico.
- **Código cerrado vs. código abierto**: Windows es un sistema operativo propietario, mientras que Linux es de código abierto y su desarrollo es impulsado por una comunidad global de desarrolladores.

