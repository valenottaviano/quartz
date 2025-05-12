# Riesgos de seguridad en webapps

%%
Date:: [[2025-05-12]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%

![[Pasted image 20250512202351.png]]
- Los atacantes pueden potencialmente usar rutas a través de la aplicación web para hacer daño. Cada ruta representa un riesgo (o no)
- Defacement
	- Cuando atacante logra atacar la web y hacer algún cambio en la visual de la web

## OWASP

**OWASP** (Open Worldwide Application Security Project) es una organización sin fines de lucro que se dedica a mejorar la seguridad del software. Su misión es hacer que la seguridad de las aplicaciones sea _visible_, para que las organizaciones puedan tomar decisiones informadas sobre los riesgos de seguridad.

### ¿Qué hace OWASP?

OWASP proporciona de forma gratuita una amplia gama de recursos relacionados con la seguridad de aplicaciones, como:

- **Proyectos y herramientas** de código abierto para pruebas de seguridad.
- **Guías y buenas prácticas**, como el famoso:
    - **OWASP Top 10**: una lista de las 10 principales vulnerabilidades de seguridad en aplicaciones web, que se actualiza cada pocos años.
    - **OWASP ASVS (Application Security Verification Standard)**: un estándar para realizar evaluaciones de seguridad en aplicaciones.
    - **OWASP Testing Guide**: metodología para pruebas de seguridad.


### Top 10 a Mayo de 2025

- **Pérdida de control de acceso (Broken Access Control)**: Los usuarios pueden acceder a recursos o realizar acciones fuera de sus permisos asignados.[Reflectiz](https://www.reflectiz.com/blog/owasp-top-ten-2024/?utm_source=chatgpt.com)
- **Fallas criptográficas (Cryptographic Failures)**: Problemas en la protección de datos sensibles debido a una implementación incorrecta de criptografía.[OWASP+1audacix.com+1](https://owasp.org/API-Security/editions/2023/en/0x11-t10/?utm_source=chatgpt.com)
- **Inyecciones (Injection)**: Entrada de datos maliciosos que pueden ejecutar comandos no autorizados, como SQL, NoSQL, OS, y LDAP.
- **Diseño inseguro (Insecure Design)**: Deficiencias en la arquitectura o diseño de la aplicación que permiten vulnerabilidades.[Reflectiz](https://www.reflectiz.com/blog/owasp-top-ten-2024/?utm_source=chatgpt.com)
- **Configuración de seguridad incorrecta (Security Misconfiguration)**: Configuraciones por defecto o mal configuradas que exponen la aplicación a riesgos.
- **Componentes vulnerables y desactualizados (Vulnerable and Outdated Components)**: Uso de bibliotecas, frameworks u otros componentes con vulnerabilidades conocidas.[Wikipedia](https://es.wikipedia.org/wiki/OWASP_Top_10?utm_source=chatgpt.com)
- **Fallos de identificación y autenticación (Identification and Authentication Failures)**: Mecanismos de autenticación débiles que permiten a atacantes comprometer credenciales o sesiones.[SecOps Solution+1OWASP+1](https://www.secopsolution.com/blog/owasp-top-10-api-security-risks-2023?utm_source=chatgpt.com)
- **Fallos en la integridad del software y los datos (Software and Data Integrity Failures)**: Falta de verificación de integridad en actualizaciones o datos críticos, lo que puede ser explotado por atacantes.
- **Fallos en el registro y monitoreo de seguridad (Security Logging and Monitoring Failures)**: Ausencia de registros adecuados y monitoreo que dificulta la detección de ataques.
- **Falsificación de solicitudes del lado del servidor (Server-Side Request Forgery - SSRF)**: La aplicación puede ser engañada para realizar solicitudes a destinos no deseados, potencialmente internos.