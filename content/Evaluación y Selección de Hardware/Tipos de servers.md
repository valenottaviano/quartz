# Criterios para selección de servidores

%%
Date:: [[2025-04-10]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%

- Básicamente, los servidores son computadoras (especiales)
	- Estarán en servicio muchas horas, con mucha capacidad.


- La configuración de hardware debe ser capaz de
	- Estar acorde a las necesidades de la carga del procesamiento de datos. Para qué se va a usar? Cuántos usuarios la van a utilizar?
	- Debe tener capacidad de crecer verticalmente en el mismo equipo y horizontalmente en otros equipos
	- Fabricante que certifique calidad y tiempo de garantía y respuesta
		- Soporte técnico local
		- Velocidad de respuesta

- El servidor es el nodo central de la red
	- Ejecuta todas las aplicaciones y servicios necesarios en la red

### Aspectos de hardware

- Posee aspectos especiales que son las que lo diferencian de los domésticos
	- Por ejemplo, posee la capacidad de hacer [[RAID]] de disco. Suelen tener una *placa raid* que es la que se encarga de la configuración de discos, con su propio procesador.
		- Las placas raid tienen un caché donde, en el caso de un corte de luz, la placa almacena la operación que puede haber quedado pendiente.
		- Las fake raid son raid que se realiza por software. Realiza el arreglo de discos, pero todo el procesamiento del raid lo realiza el CPU
	- Siempre tiene que ser una controladora independiente!! No una fake raid
- Es más preciso y soporta tareas más complejas
	- Soporte para hot-plug. Se pueden cambiar componentes con el equipo funcionando
- Soporta esquemas de tolerancia a fallos
- Es robusto para soportar muchas horas de funcionamiento continuo
	- Tiene un MTBF elevado. Parámetro que te dice la cantidad de horas que el fabricante asegura de uso correcto.
	- Normalmente un servidor, luego de 5 años, ya habría que cambiar los discos.
- No se debería usar una PC de escritorio como servidor!

### Aspectos de software

- Debe utilizar el hardware al 100%. 
- Debe permitir mantenimiento
- Máximo de estabilidad. Windows Server y Linux son los que más se utilizan en servidores.
- Debe ofrecer servicios a otros equipos
- Diseñado para ofrecer funcionalidad de red
	- DHCP
	- DNS
	- FIREWALL


### Tipos de servidores (en función del uso)

- Servidores de aplicacines
	- Servidores webs,
- Servidores de correos electrónicos
	- Relacionados con el email delivery
- Servidores proxy
	- Intermediario que limita el control a internet en las organizaciones
- Servidores de streaming
	- Para el flujo continuo de video o audio

### Tipos de servidores (en función del hardware)

- Servidor blade
	- Están diseñados para ser montados en racks
	- ![[Pasted image 20250410205627.png]]
		- Cada "hoja" es un servidor independiente a otro







