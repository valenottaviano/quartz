# Ingeniería de Requisitos

%%
Date:: [[2024-04-30]]
Course:: [[Ingeniería de Software I]]
Source:: [[]]
%%

- Abarca desde tomar un conjunto de necesidades de los usuarios y transcribirlas de la manera que pueda ser entendida por el equipo de desarrollo.
- Muchas veces la visión que tiene el cliente del trabajo final es distinta a la que tiene el desarrollador, por lo que es muy importante alinear estas visiones.


## Enfoque para encarar los requerimientos

Cuando el equipo de desarrollo no tiene todas las habilidades/conocimientos para poder entender la problemática del cliente, necesitamos del rol del **analista funcional.** 

- **Enfoque cascada**
	- Debemos tener todos los requisitos completos para empezar.
	- Nos puede servir para proyectos pequeños, rápidos y donde sabemos perfectamente a dónde queremos llegar.
	- Es rápido, pero no nos permite cambiar los requerimientos.
- **Enfoque espiral**
	- Podemos empezar con algunos requerimientos o con requerimientos incompletos e ir refinándolos luego.
	- Tenemos una idea, el núcleo de la solución, y lo vamos a ir iterando y validando.

## Tipos de requerimientos 

- **Funcionales**: Son declaraciones de los servicios que el sistema debe proporcionar, cómo debe reaccionar a entradas específicas y cómo debe comportarse en situaciones particulares. Describen qué debe hacer el sistema.
	- "El sistema debe permitir a los usuarios agregar productos a su carrito de compras y realizar el pago de manera segura".

- **No funcionales**: Son restricciones sobre los servicios o funciones que ofrece el sistema. Incluyen restricciones de tiempo, restricciones de procesamiento, restricciones de diseño, restricciones de implementación y restricciones de estándares. Describen cómo debe ser el sistema.
	- "El sistema debe procesar los pagos de forma segura y rápida, con un tiempo de respuesta máximo de 5 segundos".

- **De dominio**: Son requerimientos específicos de un dominio o industria en particular. Pueden incluir reglas de negocio, políticas gubernamentales, normativas industriales, y otros aspectos que son únicos para ese dominio en particular.
	- "El sistema debe cumplir con las regulaciones de protección de datos personales del país en el que opera, asegurando la privacidad de la información de los usuarios".