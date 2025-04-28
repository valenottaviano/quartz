# Ataques Man in the Middle (MITM)

%%
Date:: [[2025-04-28]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%

## Concepto General

Un ataque **Man in the Middle** (MITM) es una técnica en la que un atacante se sitúa entre dos partes que se están comunicando y **intercepta, altera o suplanta la comunicación** sin que las partes legítimas lo adviertan. Su objetivo puede ser espiar, robar información sensible (como contraseñas o datos bancarios) o manipular el contenido de los mensajes.

## Funcionamiento del Ataque

El proceso típico de un ataque MITM consta de tres etapas:

1. **Intercepción**: El atacante consigue interponerse en la comunicación interceptando mensajes o tráfico de red.
2. **Desencriptación (si aplica)**: Si la comunicación está cifrada, el atacante puede usar técnicas de ataque para descifrarla.
3. **Manipulación o Espionaje**: El atacante puede simplemente leer los datos o modificarlos antes de reenviarlos al destinatario original.

## Principales Métodos de Implementación

- **Suplantación de ARP (ARP Spoofing)**: El atacante envía mensajes ARP falsificados en una red local para asociar su dirección MAC a la dirección IP de un dispositivo legítimo.
- **DNS Spoofing**: Manipulación de las respuestas DNS para redirigir a la víctima a sitios falsos.
- **HTTPS Stripping**: Forzar una conexión HTTP insegura eliminando la seguridad de HTTPS, haciendo que los usuarios transmitan información en texto claro.
- **Rogue Access Points**: Creación de puntos de acceso Wi-Fi falsos que imitan redes legítimas para interceptar datos.
- **SSL Hijacking o SSL Stripping**: Interceptar sesiones SSL/TLS y reemplazarlas por conexiones inseguras.

## Ejemplos de Situaciones

- Interceptar credenciales de usuarios en redes Wi-Fi públicas no seguras.
- Modificar instrucciones de transferencias bancarias en sistemas de banca online.
- Robar tokens de sesión para suplantar identidades en aplicaciones web.

## Técnicas de Prevención

- **Uso de conexiones seguras (HTTPS/TLS)**: Asegurar que las comunicaciones estén cifradas.
- **Certificados digitales válidos**: Verificar que los certificados SSL/TLS sean legítimos.
- **VPN (Virtual Private Network)**: Cifrar todo el tráfico de red para proteger contra interceptaciones.
- **Protección de redes Wi-Fi**: Configurar redes inalámbricas con protocolos de seguridad robustos (WPA3) y evitar redes públicas abiertas.
- **Detección de ARP/DNS Spoofing**: Utilizar herramientas de monitorización de red.
- **Autenticación de doble factor (2FA)**: Agregar una capa adicional de protección en accesos.

## Herramientas Comunes Utilizadas en MITM

- **Ettercap**: Software para realizar ataques MITM en redes LAN.
- **Wireshark**: Herramienta de análisis de tráfico que puede ser usada tanto para auditorías como para ataques.
- **Bettercap**: Framework potente para realizar ataques MITM modernos.
- **mitmproxy**: Proxy interactivo para interceptar, inspeccionar y modificar tráfico HTTP y HTTPS.

