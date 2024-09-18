# Redes Peer to Peer

%%
Date:: [[2024-09-18]]
Course:: [[Teleinformática II]]
Source:: [[Direccionamiento IP]]
%%


![[Pasted image 20240918172747.png]]

## 1. **Peering**

El **peering** es un acuerdo entre dos o más proveedores de servicios de Internet (ISP) o carriers que permite intercambiar tráfico de datos de manera directa sin necesidad de utilizar un tercero. Esto se hace con el fin de mejorar la eficiencia del tráfico y reducir costos, ya que el intercambio de datos ocurre de manera directa y no a través de un proveedor de tránsito.

**Tipos de Peering:**

- **Peering Público:** Ocurre en puntos de intercambio de Internet (IXP, por sus siglas en inglés), donde varios ISPs se conectan a una infraestructura compartida para intercambiar tráfico.
- **Peering Privado:** Se establece de manera directa y dedicada entre dos ISPs a través de un enlace físico dedicado, sin utilizar un IXP.


## 2. **Tránsito**

El **tránsito** es un servicio de conexión a Internet proporcionado por un ISP o carrier de mayor tamaño (conocido como transit provider o proveedor de tránsito) a un ISP más pequeño o a una red de usuarios. En lugar de intercambiar tráfico directamente con otros ISPs como en el peering, el ISP paga a un proveedor de tránsito para acceder a toda la red de Internet global.

**Características del Tránsito:**

- **Pago por el servicio:** El ISP o la red de clientes paga al proveedor de tránsito para enviar y recibir tráfico desde y hacia otras redes fuera de su alcance directo.
- **Acceso completo a Internet:** El proveedor de tránsito ofrece acceso a toda la tabla de enrutamiento de Internet, lo que garantiza que el ISP pueda conectar a sus usuarios con cualquier red global.
- **Redundancia:** Los ISPs suelen contratar múltiples proveedores de tránsito para asegurar la redundancia y la estabilidad de su conexión a Internet.


#### 3. **Relación entre Peering y Tránsito**

Los ISPs pueden utilizar tanto peering como tránsito en su infraestructura de red. Mientras que el **peering** es una forma eficiente de intercambiar tráfico con redes de interés mutuo, el **tránsito** asegura que un ISP pueda conectar a sus usuarios con redes fuera de su alcance directo. Un enfoque común es que los ISPs establezcan acuerdos de peering con redes que generan mucho tráfico mutuo y usen tránsito para conectarse al resto del mundo.

Algunos puntos clave sobre la relación entre peering y tránsito son:

- **Complementariedad:** El tránsito y el peering se complementan. El peering reduce la dependencia del tránsito para el tráfico intercambiado entre redes con las que se tiene un alto volumen de datos.
- **Optimización de costos y rendimiento:** Los ISPs que equilibran ambos modelos pueden optimizar tanto los costos como la calidad de servicio, al intercambiar tráfico con algunas redes a través de peering y usar tránsito para el resto del tráfico.