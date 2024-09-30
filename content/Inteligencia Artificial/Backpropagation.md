# Backpropagation

%%
Date:: [[2024-09-30]]
Course:: [[Inteligencia Artificial]]
Source:: [[Perceptrón Multicapa]]
%%


El **algoritmo de Backpropagation** (propagación hacia atrás) es un método utilizado en redes neuronales artificiales para entrenar los pesos de las conexiones entre neuronas. Es una técnica de optimización basada en el **descenso por gradiente** que permite ajustar los pesos de manera eficiente para minimizar el error de predicción. Este algoritmo es fundamental en el aprendizaje supervisado de redes neuronales profundas, como el **Perceptrón Multicapa (MLP)**.

El objetivo principal del algoritmo es reducir la **función de costo** al calcular los gradientes de los pesos con respecto al error, propagando el error hacia atrás desde la capa de salida hasta la capa de entrada.

## Funcionamiento

El algoritmo de Backpropagation consta de dos fases principales:

1. **Propagación hacia adelante (Forward Propagation):** En esta fase, la red neuronal calcula las predicciones para un conjunto de datos de entrada.
2. **Propagación hacia atrás (Backpropagation):** En esta fase, el error de las predicciones es calculado y luego se propaga hacia atrás a través de la red para actualizar los pesos.

### 1. **Propagación hacia Adelante (Forward Propagation)**

Durante la propagación hacia adelante, el algoritmo toma los datos de entrada y los pasa a través de cada capa de la red neuronal. El valor de salida de cada neurona se calcula como una suma ponderada de sus entradas más un **sesgo (bias)**:

$$
z_j = \sum_{i} w_{ij} x_i + b_j
$$

Donde:
- $z_j$ es la entrada a la neurona $j$,
- $w_{ij}$ son los pesos de las conexiones entre la neurona$i$y la neurona $j$,
- $x_i$ es la salida de la neurona $i$ (o la entrada a la red para la primera capa),
- $b_j$ es el sesgo de la neurona $j$.

La salida de la neurona se obtiene al aplicar una **función de activación**$f$:

$$
a_j = f(z_j)
$$

### 2. **Función de Costo**

La **función de costo** mide el error entre las salidas predichas por la red y las salidas esperadas (etiquetas de los datos). Para problemas de regresión, una función de costo común es el **Error Cuadrático Medio (MSE)**:

$$
J(W, b) = \frac{1}{2n} \sum_{i=1}^{n} \left( \hat{y}_i - y_i \right)^2
$$

Donde:
- $\hat{y}_i$ es la predicción para la entrada $i$,
- $y_i$ es el valor real esperado,
- $n$ es el número total de ejemplos en el conjunto de entrenamiento.

El objetivo del entrenamiento es minimizar esta función de costo ajustando los pesos$W$y los sesgos$b$.

### 3. **Propagación hacia Atrás (Backpropagation)**

#### 3.1. **Cálculo del Error en la Capa de Salida**

El primer paso en la propagación hacia atrás es calcular el **error** en la capa de salida. Si$a_k$es la salida de la neurona$k$en la capa de salida y$y_k$es el valor real, entonces el error se calcula como:

$$
\delta_k = \frac{\partial J}{\partial z_k} = (a_k - y_k) f'(z_k)
$$

Donde$f'(z_k)$es la derivada de la función de activación aplicada en la neurona$k$.

#### 3.2. **Propagación del Error hacia Capas Anteriores**

El siguiente paso es propagar este error hacia las capas anteriores utilizando la regla de la cadena. El error para la neurona$j$en una capa oculta es:

$$
\delta_j = \left( \sum_k \delta_k w_{kj} \right) f'(z_j)
$$

Donde:
-$\delta_k$es el error en la siguiente capa,
-$w_{kj}$es el peso de la conexión entre la neurona$j$y la neurona$k$,
-$f'(z_j)$es la derivada de la función de activación en la neurona$j$.

#### 3.3. **Actualización de los Pesos**

Una vez calculados los errores, se utilizan para ajustar los pesos y los sesgos mediante el **descenso por gradiente**. Los pesos se actualizan de acuerdo con la siguiente fórmula:

$$
w_{ij}^{(t+1)} = w_{ij}^{(t)} - \eta \frac{\partial J}{\partial w_{ij}}
$$

Donde:
-$\eta$es la tasa de aprendizaje,
-$\frac{\partial J}{\partial w_{ij}}$es el gradiente del error con respecto al peso$w_{ij}$,
-$t$representa la iteración actual.

El sesgo se actualiza de manera similar:

$$
b_j^{(t+1)} = b_j^{(t)} - \eta \frac{\partial J}{\partial b_j}
$$

### 4. **Repetición del Proceso**

El proceso de propagación hacia adelante y hacia atrás se repite para todos los ejemplos del conjunto de entrenamiento durante múltiples **épocas** hasta que el error sea suficientemente bajo o se cumpla algún criterio de convergencia.

## Ventajas del Algoritmo de Backpropagation

1. **Eficiencia Computacional:** El algoritmo utiliza la regla de la cadena para calcular los gradientes de manera eficiente, lo que lo hace viable para entrenar redes neuronales profundas.
2. **Aplicabilidad Universal:** Funciona bien con diferentes arquitecturas de redes neuronales y puede optimizar redes profundas con múltiples capas ocultas.
3. **Generalización:** Aunque requiere un ajuste cuidadoso de los hiperparámetros, como la tasa de aprendizaje, Backpropagation permite a las redes neuronales generalizar bien en muchos problemas complejos.

## Limitaciones del Algoritmo de Backpropagation

1. **Sobreajuste:** Si la red es demasiado compleja (demasiadas capas o neuronas) o si se entrena durante demasiadas épocas, puede ajustarse demasiado a los datos de entrenamiento, lo que reduce su capacidad para generalizar a nuevos datos.
2. **Sensibilidad a la Inicialización de Pesos:** La calidad de los resultados depende de la inicialización adecuada de los pesos. Una mala inicialización puede llevar a una convergencia lenta o a quedar atrapado en mínimos locales.
3. **Vanishing Gradient Problem:** En redes profundas, las derivadas de las funciones de activación como la sigmoide pueden ser muy pequeñas, lo que causa que los gradientes disminuyan exponencialmente a medida que se propagan hacia atrás. Esto puede hacer que el entrenamiento sea extremadamente lento en las primeras capas de la red.
