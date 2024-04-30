# Historias de Usuario

%%
Date:: [[2024-04-30]]
Course:: [[Ingeniería de Software I]]
Source:: [[Ingeniería de Requisitos]]
%%

En Scrum, las historias de usuario son una técnica utilizada para definir requisitos del producto desde la perspectiva del usuario final. Estas historias describen una funcionalidad o característica del sistema que agrega valor al usuario y se expresan generalmente en un formato simple y fácil de entender. La idea principal es centrarse en las necesidades y deseos del usuario para guiar el desarrollo del producto de manera efectiva.

Las historias de usuario siguen un formato básico que incluye:

- **Como un** (tipo de usuario_,
- **Quiero** (realizar una acción)
- **Para** (obtener un beneficio o resultado deseado).

Por ejemplo, una historia de usuario para un sistema de gestión de tareas podría ser: "Como un usuario, quiero poder crear nuevas tareas para organizar mi trabajo y priorizarlas según su importancia".

## 1# Regla de las 3’Cs

1. **Tarjeta (card)**. La historia debe ser lo suficientemente breve como para que su definición entre en una tarjeta, a lo mucho en una o dos frases en un lenguaje común y entendible por el usuario.
2. **Conversación (conversation)**. La historia debe permitir un diálogo entre quien expresa la necesidad y quien la satisface.
3. **Confirmación (confirmation)**. La historia debe contener los elementos necesarios para determinar que se ha entregado el valor buscado por la necesidad.

### 2# Como (perfil), (quiero) (para)

La estructura más básica consiste en estos tres elementos, que en inglés serían **_Role–Feature–Reason_**. Recuerda que uno de los beneficios de las historias de usuario es que coloca al cliente en el  
centro de todos los procesos, por lo mismo se tienen distintos frentes de los cuales se rescatan soluciones ágiles e innovadoras.

Ejemplo:

Como director de ventas, quiero registrar los ingresos y cantidades que me solicitan mis clientes para trazar una estrategia comercial con mis proveedores.

### 3# Given – When – Then

Otra de las estructuras utilizada en el desarrollo de software se crea mediante pruebas de aceptación, donde “Given” (Dado) especifica el escenario y/o las precondiciones; “When” (Cuando) explica las condiciones de las acciones que se van a ejecutar; y “Then” (Entonces) arroja el resultado esperado y/o las validaciones a realizar.

En la metodología Agile, se añaden otros elementos como la prioridad, la estimación en días de desarrollo y las dependencias para ayudar al equipo a gestionar y priorizar de manera efectiva. Este lenguaje se deriva del BDD (Behavior Driven Development), una estrategia de desarrollo dirigida por comportamiento. Cuenta con un léxico particular, del cual vamos a tomar las 5 palabras clave:

1. **Feature**: Proporciona una descripción de alto nivel de una de las funciones de software y agrupa SCENARIOs relacionados.
2. **Scenario (Escenario)**: Es un ejemplo concreto que contiene una regla de negocio.
3. **Given (Dado)**: Se utiliza para describir el contexto inicial del sistema: la escena del escenario. Su objetivo es poner el sistema en un estado concreto antes de que el usuario (o sistema externo) comience a interactuar con el sistema (en los WHEN).
4. **When (Cuando)**: Se utiliza para describir un evento o una acción, desde una persona que interactúa con el sistema o un evento desencadenado por otro sistema.
5. **Then (Entonces)**: Se utiliza para describir el resultado esperado. La definición de un THEN debe usar una aserción para comparar el resultado real (lo que el sistema realmente hace) con el resultado esperado (lo que se supone que debe hacer el sistema).


## Agrupamiento de historias de usuario

En Scrum, las historias de usuario pueden agruparse en diferentes niveles para facilitar su gestión y planificación. Aquí te explico cómo puedes organizarlas en epics, features y stories:

1. **Epics**: Los epics son grandes conjuntos de historias de usuario que representan una funcionalidad completa pero demasiado grande para ser completada en un solo sprint. Los epics suelen abarcar múltiples features y pueden requerir varios sprints para su implementación. Ejemplos de epics podrían ser "Mejoras en el sistema de autenticación" o "Optimización de la experiencia de usuario en la página de inicio".

2. **Features**: Las features son conjuntos más pequeños de historias de usuario que forman parte de un epic y representan una funcionalidad específica y completa del producto. Las features son lo suficientemente grandes como para ser completadas en uno o varios sprints. Por ejemplo, dentro del epic "Mejoras en el sistema de autenticación", una feature podría ser "Implementar autenticación de dos factores".

3. **Stories**: Las stories son las unidades más pequeñas y detalladas de trabajo en Scrum. Representan una única funcionalidad o requerimiento del usuario que puede ser completado en un solo sprint. Las stories son las historias de usuario individuales que se encuentran dentro de una feature. Por ejemplo, dentro de la feature "Implementar autenticación de dos factores", una story podría ser "Crear pantalla de configuración de autenticación de dos factores".


[[Método INVEST para historias de usuario]]