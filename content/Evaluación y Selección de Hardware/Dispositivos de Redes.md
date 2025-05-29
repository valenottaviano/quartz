# Dispositivos de Redes

%%
Date:: [[2025-05-29]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%

# Apuntes Teóricos: Redes Informáticas

## 1. ¿Qué es una red informática?

Una **red informática** es un conjunto de computadoras y dispositivos conectados entre sí, ya sea mediante cables (medios físicos) o tecnologías inalámbricas, con el fin de **compartir recursos**. Estos recursos pueden ser tanto **hardware** (impresoras, discos duros, etc.) como **software** (archivos, aplicaciones, etc.).

---

## 2. Tipos de redes

### 2.1 Según su cobertura geográfica

- **PAN (Personal Area Network):** Red de alcance muy limitado, que conecta dispositivos cercanos a una persona (por ejemplo, un celular con auriculares por Bluetooth).
- **LAN (Local Area Network):** Red de área local, común en hogares, escuelas o empresas. Su extensión no supera los 200 metros.
    - **WLAN (Wireless LAN):** Variante inalámbrica de una LAN.
- **MAN (Metropolitan Area Network):** Interconecta varias LAN en una ciudad. Un ejemplo es WIMAX, que cubre entre 5 y 50 km.
- **WAN (Wide Area Network):** Red de gran extensión (hasta miles de kilómetros), que puede conectar computadoras a nivel nacional o continental. Ejemplo: Internet.

### 2.2 Según el medio de transmisión

| Medio              | Tipo de señal           | Velocidad      | Alcance máximo |
| ------------------ | ----------------------- | -------------- | -------------- |
| Cable coaxial      | Señal eléctrica         | Hasta 10 Mb/s  | 185 m          |
| Par trenzado (UTP) | Señal eléctrica         | Hasta 1 Gb/s   | <100 m         |
| Fibra óptica       | Haz de luz              | Hasta 1 Tb/s   | <2 km          |
| Wi-Fi              | Ondas electromagnéticas | Hasta 100 Mb/s | <100 m         |
| Bluetooth          | Ondas electromagnéticas | Hasta 3 Mb/s   | 10 m           |
| Infrarrojo         | Onda electromagnética   | Hasta 4 Mb/s   | <1 m (30°)     |

### 2.3 Según su topología (forma de conexión entre nodos)

- **Topología en Bus:** Todos los dispositivos comparten el mismo canal de transmisión. Si falla el cable principal, toda la red cae.
- **Topología en Anillo:** Los dispositivos forman un anillo. La información circula en un solo sentido. Si una computadora falla, se interrumpe la red.
- **Topología en Estrella:** Todos los dispositivos están conectados a un nodo central (hub o switch). Si el nodo central falla, toda la red se interrumpe.
- **Topología en Malla:** Cada dispositivo está conectado a varios otros, lo que brinda gran seguridad pero es costosa de implementar.
- **Topología en Árbol:** Estructura jerárquica con nodos que se ramifican desde un nodo troncal. Se usa en redes grandes, aunque puede ser difícil de configurar.

![[Pasted image 20250529201302.png]]

---

## 3. Dispositivos de conexión de red

### 3.1 Tarjeta de Red (NIC)

Permite conectar una computadora a una red. Se instala en la placa base y tiene una **dirección MAC** única (seis pares de dígitos hexadecimales). Se puede consultar con los comandos `getmac` o `ipconfig /all`.

### 3.2 Cables de conexión

#### Cable coaxial:

Tiene un conductor central para la información y una malla externa como referencia de tierra. Está en desuso.

#### Par trenzado:

El más utilizado hoy en redes LAN. Compuesto por 4 pares de hilos trenzados. Utiliza conectores RJ-45. Puede presentar **atenuación**, es decir, pérdida de señal.

#### Fibra óptica:

Utiliza luz láser para transmitir datos a altísima velocidad (hasta 10 Tb/s). Ideal para largas distancias.

### 3.3 Concentrador o Hub

Dispositivo que **retransmite los datos a todos los equipos** conectados, sin distinguir el destinatario. Es sencillo, pero puede saturar la red.

### 3.4 Conmutador o Switch

Almacena direcciones MAC y **envía los datos sólo al equipo correspondiente**, mejorando el rendimiento de la red.

### 3.5 Router o Enrutador

Permite **conectar distintas redes entre sí**, por ejemplo una LAN con Internet. Hoy en día, los routers incluyen puertos Ethernet, tecnología Wi-Fi y funciones de traducción de protocolos (como ADSL).
