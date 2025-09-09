# Sensores

%%
Date:: [[2025-09-09]]
Course:: [[]]
Source:: [[]]
%%

## 1. ¿Qué son los sensores en robótica?

- Son **dispositivos que permiten a un robot percibir su entorno o su propio estado interno**.
- Transforman una **magnitud física** (luz, sonido, temperatura, distancia, fuerza, etc.) en una **señal eléctrica** que puede ser interpretada por el sistema de control.
- Cumplen el rol de “sentidos” del robot, fundamentales para tareas de navegación, manipulación y control autónomo.

🔹 Ejemplos: sensores ultrasónicos, cámaras, acelerómetros, giroscopios, sensores de temperatura, sensores táctiles.

## 2. Diferencia entre sensor digital y analógico

| Característica    | Sensor Analógico                                                                              | Sensor Digital                                                                  |
| ----------------- | --------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| **Tipo de señal** | Entrega una señal continua, que puede tomar infinitos valores dentro de un rango (ej: 0–5 V). | Entrega una señal discreta, generalmente en forma de 0 y 1 (encendido/apagado). |
| **Precisión**     | Permite mayor riqueza de información (ej: medir temperatura exacta).                          | Más simple, pero la información es limitada (ej: temperatura “alta” o “baja”).  |
| **Ruido**         | Más sensible al ruido eléctrico y necesita filtrado.                                          | Menos sensible al ruido, señal más estable.                                     |
| **Ejemplo**       | Un potenciómetro que varía voltaje según posición.                                            | Un sensor de contacto que solo indica si fue presionado o no.                   |

## 3. Curvas de respuesta

- Una **curva de respuesta** muestra cómo varía la salida del sensor frente a diferentes valores de la magnitud que mide.
- Sirven para **calibrar** y entender la **sensibilidad, rango y precisión** del sensor.

🔹 **Ejemplo 1 (Analógico):**  
Un sensor de luz (LDR) disminuye su resistencia conforme aumenta la intensidad lumínica. La curva no es lineal: pequeños cambios de luz en bajas intensidades producen grandes cambios de señal, pero en intensidades altas la variación es menor.

🔹 **Ejemplo 2 (Digital):**  
Un sensor de límite (switch) solo tiene dos estados: abierto o cerrado. Su curva de respuesta es un salto abrupto, no gradual.

![[Pasted image 20250909183951.png]]