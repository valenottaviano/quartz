# Clustering

%%
Date:: [[2024-05-11]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Redes de interconexión]]
%%


>[!important] Clustering
>Conjunto o conglomerado de computadoras con la finalidad de comportarse como una unidad aumentando las capacidades de cómputo


## Beneficios

Características a costo relativamente bajo
- Alto rendimiento
- Alta disponibilidad 
- Alta eficiencia
- Escalabilidad

Las aplicaciones que realizar paralelización requieren un buen rendimiento, baja latencia, gran ancho de banda, redes escalables y acceso rápido a archivos

Beneficios en entornos de e-business
- Alta capacidad de procesamiento
- Consolidación de recursos
- Uso óptimo de recursos

- Disponibilidad 24/7!
- Escalabilidad horizontal y vertical

## Implementación de clusters

- Clusters homogéneo
	- 100% de compatibilidad de equipos (son todos iguales)
- Cluster semi-homogéneo
- Cluster heterogéneo

## Funcionamiento de los clusters

![[Pasted image 20240517161131.png]]

- Necesito de una interfaz que me permita ver todo los nodos como una sola unidad.
- Componentes
	- Nodos
		- Son equipos conectados a una red. 
		- Servidores y estaciones de trabajo
		- Nodos dedicados (no disponen de teclado: routers, servidores) y nodos no dedicados (estaciones de trabajo)
	- Almacenamiento
		- Consiste en una NAS o SAN o almacenamiento interno en el servidor
		- Normalmente se utiliza el protocolo NFS y sistemas de ficheros compartidos entre servidores.
	- Sistemas operativos
		- Debe ser multiproceso y multiusuario.
	- Conexiones de red
		- Tecnologías Ethernet, fibra óptica
	- Middleware
		- Generalmente actúa entre los sistemas operativos y las aplicaciones.
		- Interfaz única de acceso al sistema. Una única puerta de entrada al cluster (virtualmente), SSI
			- Esto permite que para el usuario, un cluster es un único ente.
		- Puede llevar un control de los procesos y servicios, trasladarlos a distintos nodos, exigir ciertas características para los accesos.
	- Protocolos de comunicación y servicios
	- Aplicaciones
	- Ambientes de programación paralela
		- Permiten implementar algoritmos que hacen uso de los recursos compartidos de los nodos
