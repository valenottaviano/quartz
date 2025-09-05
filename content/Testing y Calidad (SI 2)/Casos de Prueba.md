# Casos de Prueba

%%
Date:: [[2025-08-21]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%

## Elementos principales de un caso de prueba

1. **Identificador único**
    - Código o nombre que permite rastrear el caso de prueba.
2. **Objetivo o descripción**
    - Qué se quiere verificar (ejemplo: validar el login con credenciales válidas).
3. **Precondiciones**
    - Estado inicial necesario antes de ejecutar la prueba (ejemplo: el usuario debe estar registrado en el sistema).
4. **Datos de entrada**
    - Valores o parámetros que se utilizarán en la prueba.
5. **Pasos a ejecutar**
    - Secuencia detallada de acciones que el probador debe realizar.
6. **Resultado esperado**
    - Comportamiento correcto del sistema si funciona de acuerdo a lo especificado.
7. **Resultado obtenido** (se completa en la ejecución)
    - Qué ocurrió realmente al ejecutar la prueba.
8. **Postcondiciones** (opcional)
    - Estado final del sistema después de la prueba.
### Ejemplo sencillo de caso de prueba

- **ID**: TC-01
- **Objetivo**: Verificar inicio de sesión con credenciales válidas.
- **Precondición**: El usuario “Juan” existe con contraseña “1234”.
- **Datos de entrada**: Usuario = Juan, Contraseña = 1234.
- **Pasos**:
    1. Abrir la aplicación.
    2. Ingresar usuario y contraseña.
    3. Pulsar “Iniciar sesión”.
- **Resultado esperado**: El sistema permite el acceso y redirige al panel principal.
- **Resultado obtenido**: (a completar en ejecución).


## Pasos en la ejecución de un caso de prueba

1. **Preparación**
    - Revisar el caso de prueba diseñado (ID, objetivo, precondiciones, datos de entrada).
    - Asegurar que el entorno de prueba esté listo (versión del software, base de datos, configuración).
2. **Ejecución de los pasos**
    - Seguir secuencialmente las acciones indicadas en el caso de prueba.
    - Introducir los datos especificados (por ejemplo, usuario/contraseña, parámetros de entrada).
3. **Registro de resultados**
    - Documentar qué ocurrió realmente (resultado obtenido).
    - Tomar evidencia si es necesario (capturas de pantalla, logs, videos).
4. **Comparación con el resultado esperado**
    - Analizar si el resultado real coincide con lo que se definió en el diseño.
5. **Determinación del estado del caso de prueba**
    - **Pasó (Passed)**: si el resultado obtenido coincide con el esperado.
    - **Falló (Failed)**: si el resultado no coincide y aparece un defecto.
    - **Bloqueado (Blocked)**: si no se puede ejecutar por un problema externo (ej. el sistema no carga).
    - **No ejecutado (Not Run)**: pendiente de ejecución.
6. **Reporte de incidencias**
    - Si el caso falla, se abre un informe de defecto (bug report) detallando: pasos, entorno, severidad, prioridad y evidencia.


## Estructura típica de un reporte de defectos

1. **Identificador único (Bug ID)**
    - Código o número consecutivo para rastrear el defecto.
2. **Título / Resumen breve**
    - Descripción concisa del problema (ej: _“Error 500 al iniciar sesión con usuario válido”_).
3. **Descripción detallada**
    - Qué ocurre, en qué módulo y en qué condiciones.
4. **Severidad y prioridad**
    - **Severidad**: impacto técnico en el sistema (crítico, mayor, menor, trivial).
    - **Prioridad**: urgencia con la que debe corregirse (alta, media, baja).
5. **Entorno de prueba**
    - Sistema operativo, navegador, versión de la app, base de datos, etc.
6. **Pasos para reproducir**
    - Secuencia clara para que cualquier miembro del equipo pueda replicar el error.
7. **Resultado esperado**
    - Qué debería ocurrir según los requisitos.
8. **Resultado obtenido**
    - Qué ocurrió en realidad.
9. **Evidencia**
    - Capturas de pantalla, logs, videos, datos de prueba usados.
10. **Estado del defecto**
    - Nuevo, asignado, en progreso, corregido, verificado, cerrado, rechazado, duplicado, etc.

### Ejemplo de reporte de defecto

- **Bug ID**: 105
- **Título**: Error 500 al iniciar sesión con usuario válido
- **Descripción**: El sistema genera un error interno al intentar loguearse con credenciales correctas.
- **Severidad**: Crítica
- **Prioridad**: Alta
- **Entorno**: Windows 11, Chrome v124, Backend v2.3
- **Pasos para reproducir**:
    1. Abrir la aplicación en Chrome.
    2. Ingresar usuario: `juan@example.com` y contraseña: `1234`.
    3. Pulsar “Iniciar sesión”.
- **Resultado esperado**: El sistema debe mostrar el panel principal del usuario.
- **Resultado obtenido**: Pantalla en blanco con error HTTP 500.
- **Evidencia**: [captura adjunta], log con trace del servidor.
- **Estado**: Nuevo

