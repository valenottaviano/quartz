# Domain Name System

%%
Date:: [[2024-09-11]]
Course:: [[Teleinformática II]]
Source:: [[]]
%%

**DNS** (Domain Name System) es un sistema que traduce nombres de dominio legibles por humanos (como _[www.ejemplo.com](http://www.ejemplo.com)_) en direcciones IP (como _192.168.0.1_) que las computadoras utilizan para identificar y comunicarse entre sí en Internet.

#### Función principal del DNS:

- **Traducción de nombres de dominio a IP**: Los usuarios ingresan nombres de dominio en los navegadores web, y el DNS se encarga de encontrar la dirección IP asociada para dirigirlos al servidor correcto.

#### Estructura del DNS:

El DNS se organiza en una jerarquía distribuida con varios niveles:

1. **Dominios de nivel superior (TLD)**: Los más conocidos, como `.com`, `.org`, `.net`, y otros como `.es` o `.mx`.
2. **Dominios de segundo nivel**: Son los nombres elegidos por los propietarios del dominio, como "ejemplo" en _ejemplo.com_.
3. **Subdominios**: Son partes adicionales que pueden preceder al dominio principal, como _blog.ejemplo.com_.

#### Componentes clave del sistema DNS:

1. **Servidores DNS**:
    
    - **Servidor raíz**: El primer punto de contacto que redirige a los servidores que manejan los TLD.
    - **Servidor TLD**: Maneja las solicitudes para un dominio de nivel superior específico (como `.com` o `.org`).
    - **Servidor autoritativo**: Contiene la información específica del dominio, incluida la dirección IP correspondiente.
2. **Resolutores DNS**:
    
    - Son los encargados de hacer consultas a los servidores DNS en nombre de los usuarios. Cuando un usuario ingresa una URL, el resolutor DNS es quien se comunica con los servidores para encontrar la IP correspondiente.

#### Tipos de consultas DNS:

1. **Recursiva**: El resolutor hace todo el trabajo, preguntando a múltiples servidores hasta obtener una respuesta definitiva.
2. **Iterativa**: El resolutor recibe la mejor respuesta que el servidor DNS puede ofrecer y continúa la búsqueda con otros servidores si es necesario.

#### Proceso básico de resolución de nombres:

1. El usuario ingresa un dominio en el navegador.
2. El **resolutor DNS** busca primero en su **caché** para ver si ya tiene la IP correspondiente.
3. Si no está en la caché, consulta al **servidor raíz**, que redirige al **servidor TLD** apropiado.
4. El servidor TLD redirige al **servidor autoritativo** que contiene la IP del dominio solicitado.
5. Finalmente, el resolutor devuelve la IP al navegador, que se conecta al servidor web utilizando esa IP.

#### Ventajas del DNS:

- **Facilidad de uso**: Los usuarios no necesitan recordar largas direcciones IP, sino solo nombres de dominio fáciles de leer.
- **Distribución global**: El sistema DNS está distribuido por todo el mundo, lo que permite que sea robusto y rápido.
- **Escalabilidad**: Puede manejar millones de solicitudes simultáneamente gracias a su estructura distribuida.

#### Ejemplo de uso:

Cuando un usuario ingresa _[www.google.com](http://www.google.com)_ en su navegador, el sistema DNS convierte ese nombre de dominio en la dirección IP asociada a uno de los servidores de Google, permitiendo que el navegador acceda a su contenido.


