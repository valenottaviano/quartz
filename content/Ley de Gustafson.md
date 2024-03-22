# Ley de Gustafson

%%
Date:: [[2024-03-22]]
Course:: [[Arquitectura de Computadores II]]
Source:: [[Conceptos de paralelismo]]
%%

La Ley de Gustafson, propuesta por John L. Gustafson en 1988, aborda el crecimiento del volumen de cálculo necesario para resolver un problema a medida que se aumenta el número de procesadores. A diferencia de la Ley de Amdahl, la Ley de Gustafson se centra en problemas cuyo volumen de cálculo puede aumentar según el número de procesadores, lo que se conoce como escalado del problema.

### Explicación de la Ley de Gustafson:
La Ley de Gustafson se refiere a la capacidad de abordar problemas de mayores dimensiones al aumentar el número de procesadores. En la práctica, el volumen del problema no es independiente del número de procesadores, ya que con más procesadores se pueden resolver problemas de mayor tamaño.

### Expresiones Matemáticas:
La Ley de Gustafson se expresa a través de las siguientes fórmulas:

- La ganancia de velocidad o aceleración en un sistema paralelo con N procesadores se define como:
$$ S(N) = N - (N - 1) \cdot f $$

- La eficiencia máxima de un sistema paralelo con N procesadores se calcula como:
$$ E(N)_{\text{máx}} = \frac{S(N)}{N} = \frac{1}{1 + (N - 1) \cdot f} $$

- Cuando el número de procesadores tiende a infinito, la eficiencia máxima se aproxima a:
$$ E_{\text{lim}} = \lim_{N \to \infty} \frac{1}{1 + (N - 1) \cdot f} = 1 $$

Estas expresiones matemáticas de la Ley de Gustafson muestran cómo la eficiencia de un sistema paralelo puede aproximarse a 1 a medida que el número de procesadores aumenta, lo que refleja la capacidad de abordar problemas de mayor tamaño de manera eficiente con un mayor paralelismo.


Continúa: [[Dependencias del paralelismo]]