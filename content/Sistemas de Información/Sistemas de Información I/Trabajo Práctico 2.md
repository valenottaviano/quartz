# Trabajo Práctico 2

%%
Date:: [[2024-03-26]]
Course:: [[Sistemas de Información I]]
Source:: [[]]
%%

Una empresa con múltiples sucursales tiene un área para la liquidación de sueldo de su personal y trabaja de la siguiente manera. 

El día 26 de cada mes, cada sucursal envía a la empresa una planilla con las novedades ocurridas con el personal ese mes (inasistencias, licencias, llegadas tardes, etc).

Un empleado de la empresa procede a la carga de esas novedades en el sistema. 

Cuando termina la carga corre un proceso de pre-liquidación. Es como una liquidación de haberes en borrador. El jefe del área controla la pre-liquidación y si está de acuerdo se realiza la liquidación definitiva de sueldos. 

El jefe de tesorería de la empresa recibe una planilla resumen con la liquidación y acredita en las cuentas de los empleados el monto liquidado.

El cliente nos dice que desea cambiar el sistema informático, ya que el envío de las planillas se realiza por correo electrónico escaneadas, y tienen una demora de tres días para ingresarlas en el sistema. Por otro lado, luego de la liquidación deben imprimir los recibos y repartirlos entre las sucursales para que sean entregados a los empleados. 

En la entrevista, el cliente nos sugiere la *posibilidad de solicitar a los empleados que descarguen sus propios recibos desde una web*.


## Identificación del problema
- El envío de las planillas se realiza por correo electrónico escaneadas.
	- Demora tres días para ingresar al sistema.
	- Se realiza una repartición física
		- Se necesita alguien que lo lleve (hora hombre)
		- Costo de transporte
		- Se puede perder en el transporte
		- Posible error humano 
	- Posibles errores por redundancia en el momento de cargar la información.
	- No existe un lugar centralizado donde se guarden las liquidaciones de sueldo.
- Automatización del registro de las novedades. 
	- En lugar de una planilla -> Formulario digital
- Los empleados no pueden descargar sus propios recibos desde una web.

>[!important] Problema
>La empresa X no posee un sistema **informatizado** para la **carga** de novedades, **generación** de formularios de liquidación de sueldo y **trazabilidad** de la información del sueldo de sus empleados.


## Caso de uso: 

Antes
![[Pasted image 20240326181325.png]]
![[Pasted image 20240326194030.png]]

Después
![[Pasted image 20240326181350.png]]
![[Pasted image 20240326194048.png]]

- En el nuevo caso de uso, el jefe de area ya no trabajará con las planillas físicas. Directamente las novedades se cargan día a día en el sistema.
	- Asistencias se cargarán con lectores de huellas dactilares.
	- Las licencias serán cargadas a través de formulario online.
	- Esto permite que la pre-liquidación se pueda realizar en cualquier momento del mes, y no tenga que esperar a que el jefe de area envíe las novedades a fin de mes.
- En el nuevo caso de uso. Los empleados serán notificados y podrán descargar los recibos de sueldo a través de la plataforma
	- Esto evita tener que imprimirlos, transportarlos y entregarlos en las sucursales.

## Solución
![[Pasted image 20240326183034.png]]

## Prefactibilidad Tecnológica/Económica

| Componente                              | Descripción                                                                                                        | Precio Estimado             | Implementación en AWS                                                                                                     |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | --------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Hardware para Acceso con Huella Digital | Dispositivos de lectura de huellas dactilares para registrar asistencias.                                          | $100 - $500 por dispositivo | Integración con AWS a través de una API o servicio de gestión de dispositivos.                                            |
| Front-end                               | Interfaz de usuario para el formulario online de carga de licencias y descarga de recibos de sueldo.               | $10 - $1000+ al mes         | Despliegue en Amazon EC2 o en Bucket de AWS (liviano)                                                                     |
| Backend                                 | Sistema que gestionará la carga de novedades, pre-liquidación, notificaciones a empleados y generación de recibos. | $100 - $1000+ al mes        | Uso de AWS Lambda para lógica de negocio, EC2, Amazon S3 para almacenamiento de archivos.                                 |
| Base de Datos                           | Almacenamiento centralizado de información de novedades, liquidaciones y datos de empleados.                       | $10 - $1000+ al mes         | Implementación con Amazon RDS (Relational Database Service) o Amazon DynamoDB (NoSQL) para la base de datos centralizada. |


- Mantenimiento del software
- Ahorramos costos en impresión y transporte
- Costos de desarrollo de la solución (mano de obra)
- Costo de capacitación del personal 

## Prefactibilidad Legal
- En Argentina, se debe cumplir con la ley 25.326 de protección de datos personales.
- El empleado debe ceder su consentimiento para utilizar sus datos biométricos.

## Prefactibilidad humana
- Capacitación y documentación de uso del nuevo sistema disponible para los empleados.
