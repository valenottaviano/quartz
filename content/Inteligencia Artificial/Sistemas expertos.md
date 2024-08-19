#  Sistemas Expertos en Inteligencia Artificial

%%
Date:: [[2024-08-19]]
Course:: [[Inteligencia Artificial]]
Source:: [[]]
%%


## **Definición de Sistema Experto (SE)**  

Un sistema experto es un programa computacional que, *dentro de un dominio específico*, exhibe un grado de experiencia en la solución de problemas comparable con la de un experto humano. Este tipo de sistemas utiliza conocimiento proveniente de expertos humanos para resolver problemas que requieren un saber especializado.

## **Características de los Sistemas Expertos:**
- **Procesos Heurísticos:** Se basan principalmente en procesos heurísticos antes que algorítmicos.
- **Conocimiento Heurístico:** Representan y manipulan conocimiento que es amplio, impreciso y mal definido, al alcance de pocos expertos.
- **Toma de Decisiones:** Pueden tomar decisiones incluso cuando el conocimiento es incierto, impreciso o incompleto.
- **Capacidad de Explicación:** Pueden explicar su propio razonamiento, lo que beneficia tanto al usuario como al diseñador del sistema.

**3. Aplicabilidad de los Sistemas Expertos:**  
Son especialmente eficaces en tareas como análisis, diagnósticos, clasificación e interpretación, y son capaces de autoexplicarse y comunicarse de manera efectiva con los usuarios.

**4. Ventajas y Desventajas Comparativas:**

- **Ventajas de la Experiencia Artificial sobre la Humana:**
    - **Permanencia:** La experiencia artificial es permanente y fácil de transferir y documentar, a diferencia de la experiencia humana, que es perecedera y difícil de transferir.
    - **Consistencia:** Los sistemas expertos son consistentes, mientras que los humanos pueden ser impredecibles.
    - **Disponibilidad:** Los sistemas expertos están siempre disponibles y son menos costosos en comparación con la contratación de expertos humanos.
- **Desventajas:**
    - **Falta de Creatividad:** Los sistemas expertos carecen de inspiración y creatividad, son menos adaptativos y dependen de la entrada simbólica en un ambiente fijo.
    - **Enfoque Específico:** Mientras que un experto humano puede tener un enfoque amplio, un sistema experto se enfoca en aspectos específicos y técnicos.

**5. Arquitectura Básica de los Sistemas Expertos:**

- **Base de Conocimientos:** Contiene el conocimiento sobre el dominio, generalmente representado mediante reglas que relacionan condiciones con conclusiones.
- **Base de Hechos (Memoria de Trabajo):** Almacena los hechos descubiertos durante una consulta, los cuales son usados por el sistema para deducir nuevos hechos.
- **Motor de Inferencia:** Modela el proceso de razonamiento humano, deduciendo nuevos hechos al contrastar la información de la base de hechos con la base de conocimientos.
- **Subsistema de Explicación:** Permite al sistema experto explicar su razonamiento, proporcionando transparencia al usuario.
- **Interfaz de Usuario:** Permite la interacción en lenguaje natural entre el usuario y el sistema, simulando una conversación humana.

**6. Representación del Conocimiento:**

- **Reglas Heurísticas:** Modelo psicológico que simula el comportamiento humano basado en estímulos y acciones.
- **Triplos Objeto-Atributo-Valor (OAV):** Formalismo utilizado para representar el conocimiento en estructuras simples.
- **Redes Semánticas y Marcos (Frames):** Adecuados para sistemas complejos que requieren manejo de grandes cantidades de datos y valores por defecto.
- **Lógica de Predicados y Redes Neuronales:** Otras formas avanzadas de representación del conocimiento.

**7. Inferencia en Sistemas Basados en Conocimiento:**

- **Encadenamiento Hacia Adelante:** Parte de un conjunto de hechos y aplica reglas para deducir nuevos hechos.
- **Encadenamiento Hacia Atrás:** Parte de un objetivo y busca reglas que lo soporten, deduciendo hechos que lo justifiquen.

**8. Estrategias de Resolución de Conflictos:**  

Se utilizan métodos para seleccionar la regla más adecuada en situaciones donde múltiples reglas pueden ser aplicables, asegurando la efectividad y eficiencia en la inferencia.

**9. Generación de Explicaciones:** Una de las características más valiosas de los sistemas basados en reglas es su capacidad para explicar cómo se llegó a una conclusión, lo que mejora la comprensión y confianza del usuario en el sistema.

**10. Estado de las Reglas:**
- **Activa:** El antecedente de la regla es verdadero.
- **Inactiva:** El antecedente de la regla es falso.
- **Disparada:** La acción del consecuente ha sido ejecutada.
