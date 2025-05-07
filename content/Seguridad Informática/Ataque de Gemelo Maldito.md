# Ataque de Gemelo Maldito

%%
Date:: [[2025-05-05]]
Course:: [[Seguridad Informática]]
Source:: [[Man in the Middle]]
%%


## Definición

El **ataque de gemelo maldito** es una técnica de ataque en redes inalámbricas donde un atacante crea un **punto de acceso Wi-Fi falso** que simula ser una red legítima, con el objetivo de engañar a los usuarios para que se conecten a él y así poder **interceptar o manipular sus comunicaciones**.

## Funcionamiento

1. El atacante configura un punto de acceso con el **mismo SSID (nombre de red)** que una red confiable o pública.
2. Puede utilizar una señal de mayor potencia para que los dispositivos de los usuarios se conecten automáticamente a su red falsa.
3. Una vez conectado el usuario, el atacante puede:
   - Interceptar tráfico de red (sniffing).
   - Realizar ataques de **phishing**, redirigiendo al usuario a sitios falsos.
   - Robar credenciales, tokens de sesión, cookies, etc.
   - Injectar malware o scripts maliciosos en la navegación.

## Ejemplo típico

Un atacante instala un punto de acceso falso llamado "Free Airport WiFi". Los dispositivos que ya hayan guardado redes con ese nombre pueden conectarse automáticamente sin que el usuario lo note. A partir de allí, el atacante puede espiar todo el tráfico del usuario.

## Herramientas utilizadas

- **Airbase-ng**
- **Wireshark**
- **Bettercap**
- **Fluxion**
- **EvilAP**

## Riesgos

- Robo de información confidencial (contraseñas, tarjetas, correos).
- Suplantación de identidad.
- Compromiso total del dispositivo conectado.
- Acceso a servicios bancarios, redes sociales o cuentas corporativas.

## Medidas de prevención

- Evitar conectarse a redes públicas abiertas sin protección.
- Usar **VPN** para cifrar la conexión.
- Verificar siempre que el sitio use **HTTPS**.
- No ingresar contraseñas o datos sensibles en redes no confiables.
- Desactivar la conexión automática a redes Wi-Fi.
- Mantener el sistema operativo y navegador actualizados.
- Utilizar herramientas de protección como **firewalls personales** o **antivirus con protección de red**.

## Relación con otros ataques

Este ataque es una **variante del Man-in-the-Middle (MitM)**, ya que el atacante se sitúa entre el usuario y el destino real, interceptando o modificando la comunicación.



