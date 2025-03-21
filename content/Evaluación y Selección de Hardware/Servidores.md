# Servidores

%%
Date:: [[2025-03-21]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%

#### ¿Qué es un Servidor?

Un servidor es un nodo central dentro de una red que provee servicios a otros nodos, denominados clientes. Puede ser tanto una computadora especializada como una simple máquina dependiendo del uso requerido.

También puede referirse a un programa o proceso que proporciona servicios específicos a otras aplicaciones o procesos clientes, incluso dentro de una misma computadora.

#### Tipos de Servidores según su Funcionalidad:

- **Servidor de impresión:** Administra impresoras, controla y organiza trabajos de impresión en red.
- **Servidor de correo:** Gestiona operaciones de almacenamiento, envío, recepción y enrutamiento de correos electrónicos.
- **Servidor de telefonía:** Maneja funciones relacionadas con telefonía, como encaminamiento de llamadas.
- **Servidor proxy:** Administra el acceso a internet, filtrando o permitiendo accesos específicos a la red.
- **Servidor web:** Almacena y distribuye contenido web mediante protocolos como HTTP/HTTPS.
- **Servidor de base de datos:** Proporciona servicios relacionados con bases de datos a otros programas y clientes.
- **Servidor de contingencia o backup:** Mantiene respaldo de datos para evitar la pérdida en caso de fallo del servidor principal.
- **Servidor de seguridad:** Equipado con software especializado (antivirus, firewall, IDS) para proteger contra intrusiones y amenazas informáticas.

#### Tipos de Servidores según su Rol:

- **Servidor dedicado:** Exclusivamente dedicado a administrar recursos de red, sin otras funciones.
- **Servidor no dedicado:** También funciona como estación de trabajo, procesando solicitudes locales y de red.

#### Servidores de Aplicaciones:

- **Servidor Web (HTTP):** Procesa aplicaciones del lado del servidor, generando respuestas dinámicas.
    
    - Ejemplos: PHP (lenguaje interpretado para aplicaciones web dinámicas) y ASP (Active Server Pages, tecnología de Microsoft).
- **Servidor de Streaming:** Distribuye contenido multimedia en tiempo real, almacenándolo temporalmente en un búfer durante la descarga.
    

#### Virtualización:

Consiste en crear versiones virtuales de recursos tecnológicos (hardware, sistema operativo, almacenamiento o redes) mediante un Hypervisor o VMM (Virtual Machine Monitor).

Tipos principales de virtualización:

- **Virtualización completa:** Simula hardware suficiente para correr sistemas operativos sin modificaciones.
- **Paravirtualización:** Ofrece abstracción especial que requiere modificaciones en el sistema operativo invitado.
- **Virtualización a nivel de sistema operativo:** Varias instancias virtuales comparten un solo núcleo o kernel.

##### Hypervisores:

- **Tipo I (Bare-metal):** Se instala directamente sobre el hardware, ideal para sistemas de producción.
- **Tipo II (Hosted):** Se instala sobre un sistema operativo existente, ligeramente menos eficiente.

#### Servidor de Archivos (Fileserver):

Permite acceso remoto y centralizado a archivos, transparentemente para el cliente. Utiliza protocolos como:

- **SMB/CIFS:** Principalmente en redes Windows.
- **NFS:** Utilizado en redes Unix/Linux.

Aspectos de seguridad importantes incluyen autenticación de usuarios, control de permisos (lectura, escritura, ejecución) y la posibilidad de integración en dominios o sistemas preconfigurados (Appliances).