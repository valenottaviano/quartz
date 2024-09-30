# Perceptrón Multicapa

%%
Date:: [[2024-09-30]]
Course:: [[Inteligencia Artificial]]
Source:: [[Redes Neuronales]]
%%

El **Perceptrón Multicapa (MLP)** es una arquitectura de red neuronal artificial compuesta por varias capas de nodos o neuronas, donde cada neurona en una capa está conectada a las neuronas de la siguiente capa. El MLP es un modelo clásico de red neuronal profunda que se utiliza en tareas de clasificación y regresión.

Se le considera una extensión del perceptrón simple, ya que el perceptrón simple sólo puede manejar problemas linealmente separables, mientras que el MLP es capaz de modelar relaciones no lineales.

## Estructura

Un MLP consta de las siguientes componentes principales:

1. **Capa de Entrada (Input Layer):**
   - Recibe los datos de entrada. Cada neurona en esta capa representa una característica del conjunto de datos.

2. **Capas Ocultas (Hidden Layers):**
   - Son las capas intermedias entre la capa de entrada y la capa de salida. Los MLP con más de una capa oculta se consideran redes neuronales profundas.
   - Cada neurona de una capa oculta toma como entrada una combinación ponderada de las salidas de las neuronas de la capa anterior, pasa esa combinación a través de una función de activación, y luego envía el resultado a la siguiente capa.

3. **Capa de Salida (Output Layer):**
   - Proporciona la predicción o el resultado del modelo. El número de neuronas en esta capa depende del tipo de tarea (p. ej., una sola neurona para regresión o múltiples neuronas para clasificación).

## Funcionamiento

### 1. **Propagación hacia Adelante (Forward Propagation):**
Durante el proceso de aprendizaje, los datos de entrada se pasan a través de la red comenzando por la capa de entrada. Cada neurona aplica una función de activación sobre una suma ponderada de sus entradas y pasa el resultado a la siguiente capa. El proceso se repite hasta llegar a la capa de salida, donde se genera una predicción.

### 2. **Función de Activación:**
Es una función matemática que transforma la entrada a la neurona antes de pasarla a la siguiente capa. Algunas de las funciones de activación más comunes son:

- **Sigmoide**: $f(x) = \frac{1}{1 + e^{-x}}$
- **ReLU (Rectified Linear Unit)**: $f(x) = \max(0, x)$
- **Tanh**: $f(x) = \frac{e^x - e^{-x}}{e^x + e^{-x}}$

Estas funciones introducen no linealidad al modelo, permitiendo al MLP resolver problemas más complejos que no son linealmente separables.

### 3. **Propagación hacia Atrás ([[Backpropagation]]):**
Es el algoritmo utilizado para ajustar los pesos de las conexiones neuronales en función del error en las predicciones. El objetivo es minimizar una función de coste, como el error cuadrático medio (MSE) en tareas de regresión o la entropía cruzada en tareas de clasificación.

- **Error**: La diferencia entre la predicción y la etiqueta real.
- **Gradiente**: El gradiente del error con respecto a los pesos se calcula usando la regla de la cadena (derivadas parciales). Luego, los pesos se ajustan en la dirección contraria al gradiente (descenso del gradiente).

### 4. **Entrenamiento:**
El proceso de ajuste de los pesos en una MLP se repite durante múltiples iteraciones o épocas sobre el conjunto de datos de entrenamiento. El objetivo es encontrar el conjunto de pesos que minimice el error de predicción.

## Algoritmo de Entrenamiento

1. Inicialización aleatoria de los pesos.
2. Propagación hacia adelante para obtener las predicciones.
3. Cálculo del error comparando las predicciones con las etiquetas reales.
4. Propagación hacia atrás para ajustar los pesos.
5. Repetir el proceso hasta que el error sea lo suficientemente bajo o hasta un número predeterminado de iteraciones.

## Propiedades

- **Capacidad de aproximación universal**: Un MLP con al menos una capa oculta y suficientes neuronas puede aproximar cualquier función continua. Sin embargo, el número de neuronas y capas puede afectar tanto el rendimiento como la eficiencia computacional.
- **Aprendizaje supervisado**: El MLP generalmente se entrena en un escenario supervisado, donde se tienen datos de entrada y las correspondientes etiquetas o valores objetivos.

## Limitaciones

1. **Tiempo de entrenamiento**: Los MLP pueden ser costosos en términos computacionales, especialmente si tienen muchas capas y neuronas.
2. **Sobreajuste**: Si el modelo tiene demasiados parámetros (neuronas y capas) y no se emplean técnicas como la regularización, puede ajustarse demasiado a los datos de entrenamiento y no generalizar bien a datos nuevos.
3. **Sensibilidad a la escala de los datos**: El MLP requiere que los datos de entrada estén bien escalados para que el entrenamiento sea eficaz.

## Aplicaciones

- Clasificación de imágenes y texto.
- Predicción de series temporales.
- Reconocimiento de patrones.
- Procesamiento del lenguaje natural (PLN).


