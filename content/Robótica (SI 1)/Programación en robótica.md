# Programación en robótica

%%
Date:: [[2025-09-23]]
Course:: [[Robótica]]
Source:: [[]]
%%


- Arduino es pionero en la programación física, permitiendo a los informáticos fácilmente darle energía, programarlo y monitorearlo con el PC
	- Es una placa open-hardware, por lo que bajó mucho las barreras a mejoras 

## Programación Arduino

### Entorno de desarrollo

El **Arduino IDE** es el entorno más utilizado. Ofrece:
- Editor de código en C/C++.
- Compilación y carga directa al microcontrolador vía USB.
- Librerías preinstaladas para manejar sensores y actuadores.
Hoy en día también existen alternativas como **Arduino Web Editor** o **PlatformIO** (para Visual Studio Code).

### Patrones comunes de programación

En proyectos de robótica se emplean ciertos patrones de programación frecuentes:
1. **Estructura básica del programa**:
    - `setup()`: configuración inicial (pines, comunicación serial, librerías).
    - `loop()`: ciclo infinito donde se ejecuta la lógica de control.
2. **Lectura–procesamiento–acción**:
    - Leer entradas (sensores).
    - Procesar datos (algoritmos de control).
    - Actuar sobre salidas (motores, LEDs, etc.).
3. **Uso de interrupciones**:  
    Permiten responder a eventos externos (ej. un sensor que dispara una señal) sin depender del ciclo principal.
4. **Control por PWM**:  
    Generación de señales de control para actuadores mediante la función `analogWrite()`.
5. **Comunicación**:  
    Uso de protocolos como UART (Serial), I2C o SPI para interactuar con periféricos y módulos externos.



![[Pasted image 20250923191347.png]]

### Ejemplo 1: parpadeo de 3 leds junto con el builtin

![[Pasted image 20250923192354.png]]

```c

void setup() {
  pinmode(LED_BUILTIN, output);
  pinmode(8, output);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(8, HIGH);
  digitalWrite(9, HIGH);
  digitalWrite(10, HIGH);

  delay(500);                        // wait for half a second

  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(8, LOW);
  digitalWrite(9, LOW);
  digitalWrite(10, LOW);

  delay(500);                        // wait for half a second
}

```



### Ejemplo 2: agregando un pulsador

- Se podrían mapear los pines numéricos a nombres de variables para mejor explicación

```c
void setup() {
  pinMode(9, OUTPUT);
  pinMode(6, INPUT);
}

void loop() {
  if (digitalRead(6) == HIGH) {
    digitalWrite(9, HIGH);
  } else {
    digitalWrite(9, LOW);
  } // end if
}
```

En una sintaxis más reducida....
```c
void setup() {
  pinMode(9, OUTPUT);
  pinMode(6, INPUT);
}

void loop() {
  digitalWrite(9, digitalRead(6));
}
```


- función `millis()`
	- tiempo en milisegundos desde que se inició la ejecución.
	- devuelve un `long` y no detiene el ciclo loop como si lo hace `delay()`


