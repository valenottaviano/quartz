# Man in the Middle en HTTPS

%%
Date:: [[2025-05-05]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%


## ¿Qué es un ataque _Man in the Middle_ (MitM)?

Un ataque **Man in the Middle** (_Hombre en el Medio_) es una técnica en la que un atacante se posiciona entre dos partes que se están comunicando, con el objetivo de **interceptar, alterar o suplantar** la información intercambiada **sin que ninguna de las partes lo note**.

En el contexto de redes, los actores típicos son:
- Un cliente (por ejemplo, un navegador web).
- Un servidor (por ejemplo, un sitio web).
- Un atacante que intercepta y manipula el tráfico entre ellos.

---

## ¿Qué es HTTPS?

HTTPS (_HyperText Transfer Protocol Secure_) es una versión segura de HTTP, que agrega una capa de cifrado mediante **TLS (Transport Layer Security)** para garantizar:

- **Confidencialidad:** los datos no pueden ser leídos por terceros.
- **Integridad:** los datos no pueden ser alterados sin ser detectados.
- **Autenticación:** el cliente puede verificar la identidad del servidor a través de su certificado digital.

---

## Componentes técnicos involucrados

| Concepto                         | Descripción                                                                                                   |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **TLS**                          | Protocolo criptográfico que cifra la comunicación entre cliente y servidor.                                   |
| **Certificado digital**          | Documento emitido por una Autoridad Certificadora (CA) que asegura la identidad del servidor.                 |
| **CA (Autoridad Certificadora)** | Entidad confiable que emite certificados digitales.                                                           |
| **Handshake TLS**                | Proceso inicial donde cliente y servidor acuerdan los parámetros criptográficos y se verifica el certificado. |
| **HSTS**                         | Mecanismo que fuerza al navegador a usar siempre HTTPS en un sitio determinado.                               |

---

## ¿Cómo puede ocurrir un ataque MitM en HTTPS?

A pesar de las protecciones de HTTPS, existen algunas **vulnerabilidades y escenarios donde un MitM puede ser exitoso**:

### 1. Certificados falsos o modificados

El atacante presenta un **certificado falso** al cliente para suplantar la identidad del servidor. Esto puede lograrse mediante:

- Una CA comprometida.
- Ingeniería social para que el usuario acepte un certificado no válido (autofirmado).
- Malware que instala un **certificado raíz malicioso** en el sistema del usuario.

**Resultado:** El navegador cree que la conexión es segura, pero en realidad está cifrada con el atacante, quien puede leer o modificar todo.

### 2. SSL/TLS stripping

Consiste en interceptar la conexión y forzar al usuario a usar HTTP en lugar de HTTPS.

**Pasos:**

1. El atacante intercepta la solicitud HTTP inicial.
2. Evita la redirección automática a HTTPS.
3. El usuario navega por el sitio en HTTP sin notarlo.

**Prevención:** El servidor debe usar **HSTS** para obligar al navegador a conectarse solo por HTTPS.

### 3. 🛠️ TLS mal configurado

Versiones obsoletas de TLS o configuraciones débiles (como cifrados inseguros o falta de verificación del hostname) pueden abrir la puerta a ataques como:

- **BEAST**
- **POODLE**
- **Heartbleed**
- **RC4 Bias**
- **ROBOT attack** (RSA Key extraction)

### 4. Instalación de certificados raíz falsos

Si el sistema operativo o el navegador acepta un certificado raíz personalizado (por malware o políticas corporativas), cualquier sitio puede ser suplantado.

---

## Medidas de protección contra ataques MitM

| Medida                                           | Explicación                                                          |
| ------------------------------------------------ | -------------------------------------------------------------------- |
| **Uso de TLS 1.2 o superior**                    | TLS moderno evita ataques conocidos y usa cifrados fuertes.          |
| **HSTS (HTTP Strict Transport Security)**        | Evita el _SSL stripping_ al forzar HTTPS.                            |
| **Certificate Pinning**                          | El navegador recuerda el certificado esperado y alerta ante cambios. |
| **Verificación del certificado en el navegador** | Siempre verificar que el candado y el certificado sean válidos.      |
| **No aceptar certificados autofirmados**         | Salvo en entornos controlados, puede ser una señal de ataque.        |
| **Redes seguras**                                | Evitar redes Wi-Fi públicas sin protección (no cifradas o sin VPN).  |

---

## Ejemplo simplificado de ataque MitM con certificado falso

1. El usuario entra a `https://banco.com`.
2. El atacante intercepta la conexión y responde con un certificado falso (que dice ser `banco.com`, pero fue creado por el atacante).
3. Si el navegador **acepta ese certificado** (por error o porque el sistema tiene una CA falsa instalada), se establece una conexión segura _con el atacante_, no con el banco real.
4. El atacante establece una segunda conexión HTTPS con el servidor real.
5. Actúa como intermediario: lee, copia o modifica todo lo que pasa entre el usuario y el sitio real.


Aunque HTTPS proporciona una capa de seguridad robusta, **no es invulnerable**. Las **debilidades están en la implementación, la configuración o la validación de los certificados**, y en la **interacción del usuario con alertas de seguridad**. Los ataques MitM son reales y peligrosos, pero con una configuración adecuada, certificados válidos y buenos hábitos de navegación, se pueden mitigar eficazmente.


