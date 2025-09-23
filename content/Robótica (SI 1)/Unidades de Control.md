# Unidades de Control

%%
Date:: [[2025-09-18]]
Course:: [[Robótica]]
Source:: [[]]
%%

## 1. Unidades de control

Las **unidades de control** son dispositivos electrónicos que actúan como “cerebro” de un sistema robótico. Su función principal es **recibir señales** desde los sensores, **procesar la información** según la lógica programada, y **generar señales de salida** hacia actuadores (motores, servos, relés, etc.).  
En el ámbito académico y de prototipado, las más comunes son los **microcontroladores** (Arduino, PIC, STM32) y, en sistemas más complejos, **computadoras de placa reducida** (Raspberry Pi, BeagleBone).

| Unidad Control    | Longitud de Palabra | Clock   | RAM       | FLASH   | E2 PROM   | I/O          | ADC (canales x bits) | DAC        | PWM (canales x bits) | S.O.  | Conectividad                          | Núcleos |
| ----------------- | ------------------- | ------- | --------- | ------- | --------- | ------------ | -------------------- | ---------- | -------------------- | ----- | ------------------------------------- | ------- |
| ATtiny85          | 8 bits              | 8 MHz   | 512 bytes | 8 KB    | 512 bytes | 6 pines      | 2 x 10               | No         | 2 x 8                | No    | No                                    | 1       |
| Arduino Uno R3    | 8 bits              | 16 MHz  | 2 KB      | 32 KB   | 1 KB      | 14 digitales | 6 x 10               | No         | 6 x 8                | No    | USB                                   | 1       |
| ESP32-S3          | 32 bits             | 240 MHz | 512 KB    | 16 MB   | No        | 44 pines     | 18 x12               | 2 x 8 bits | 16 canales           | NO    | Wi-Fi, Bluetooth                      | 2       |
| Raspberry Pi Pico | 32 bits             | 133 MHz | 264 KB    | 2 MB    | No        | 26           | 12 bits              | No         | 16 canales           | No    | No (Wi-Fi solo en Pico W)             | 2       |
| Raspberry Pi 5    | 64 bits             | 2.4 GHz | 2–16 GB   | 2–16 GB | No        | 40           | 12 bits              | No         | 28 canales           | Linux | HDMI, USB, Ethernet, Wi-Fi, Bluetooth | 4       |
- Una **palabra** es la cantidad de bits que el procesador puede manejar, almacenar o transferir como una unidad es sus registros internos.
- El **clock** es la frecuencia con la que trabaja el procesador
- Tipos de memoria posibles
	- Flasj
	- PROM
Curva de conversión de analógico a digital. Puede haber distintas resoluciones
![[Pasted image 20250918190030.png]]

---

## 2. Líneas de entrada y salida

Las líneas de un microcontrolador se clasifican como:

- **Entradas**: reciben información del entorno mediante sensores (temperatura, distancia, luz, etc.).
- **Salidas**: envían señales hacia actuadores (motores, LEDs, pantallas, etc.).

Estas líneas pueden ser configuradas por software, permitiendo definir si un pin funciona como entrada o salida.

---

## 3. Líneas digitales y analógicas

- **Líneas digitales**: solo reconocen dos estados:
    - `0` (LOW, 0 V)
    - `1` (HIGH, generalmente 5 V o 3.3 V)  
        Son ideales para botones, interruptores o sensores de estado binario.
- **Líneas analógicas**: pueden captar o generar valores continuos dentro de un rango (ej. 0–1023 en Arduino UNO con 10 bits de resolución).  
    Permiten leer sensores que entregan valores proporcionales (ej. un potenciómetro o un sensor de temperatura analógico).

---

## 4. Salidas PWM (Pulse Width Modulation)

El **PWM** es una técnica para simular señales analógicas usando salidas digitales. Consiste en variar el **ciclo de trabajo (duty cycle)** de una señal cuadrada:

- 0% → señal siempre en LOW.
- 50% → mitad del tiempo HIGH, mitad LOW.
- 100% → señal siempre en HIGH.

Aplicaciones:

- Control de velocidad de motores de corriente continua.
- Regulación de brillo en LEDs.
- Control de posición en servomotores.

---

