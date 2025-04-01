# EMSEC, TRANSSEC y TEMPEST

%%
Date:: [[2025-04-01]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%


En contextos gubernamentales, militares o de infraestructura crítica, existen amenazas avanzadas vinculadas a la **emisión involuntaria de señales electromagnéticas** o a la **intercepción de información en tránsito o almacenada**. Para abordar estos riesgos se utilizan disciplinas como **EMSEC**, **TRANSSEC** y **TEMPEST**.

---

## EMSEC (Emission Security)

**EMSEC** es la sigla de **Emission Security** (Seguridad de Emisiones).

### Definición
Conjunto de medidas destinadas a proteger los equipos electrónicos contra la captura no autorizada de información a través de **emisiones electromagnéticas** involuntarias.

### Objetivo
Evitar que señales generadas por dispositivos electrónicos puedan ser captadas y utilizadas para reconstruir información sensible.

### Ejemplo
- Captura de información mediante antenas que detectan señales de monitores, teclados o cables mal blindados.

### Medidas comunes
- Blindaje de dispositivos.
- Filtros de señal.
- Diseño de equipos con bajas emisiones.
- Control de zonas (zonas seguras).

---

## TRANSSEC (Transmission Security)

**TRANSSEC** es la sigla de **Transmission Security** (Seguridad de Transmisión).

### Definición
Conjunto de técnicas que previenen la **intercepción y explotación de las transmisiones** de datos, incluso si el contenido está cifrado.

### Objetivo
Evitar que un atacante pueda detectar o analizar el tráfico (metadatos, patrones de uso, volumen de transmisión), aunque no pueda acceder directamente al contenido.

### Ejemplo
- Técnicas de interferencia para evitar que un enemigo detecte el uso de un canal de comunicación.
- Uso de saltos de frecuencia (frequency hopping) en comunicaciones militares.

### Medidas comunes
- Técnicas de dispersión espectral.
- Cambios aleatorios de canal.
- Encapsulamiento o mezcla de tráfico.

---

## TEMPEST

**TEMPEST** es un término utilizado para referirse a la **investigación, control y protección contra las emanaciones electromagnéticas** que pueden ser explotadas para obtener información clasificada.

### Definición
Nombre clave que hace referencia tanto a estándares como a medidas aplicadas para prevenir la filtración de datos a través de emisiones no intencionadas de dispositivos electrónicos.

### Origen
- Inicialmente desarrollado por la NSA (Agencia de Seguridad Nacional de EE. UU.).
- TEMPEST no es una sigla, aunque a veces se usa como acrónimo retroactivo.

### Objetivo
Garantizar que ningún dato pueda ser reconstruido mediante la captación de señales comprometedoras.

### Categorías TEMPEST
- **RED**: Equipos que procesan información clasificada.
- **BLACK**: Equipos que no procesan información clasificada.

### Ejemplo
- Captura de texto tecleado observando variaciones en el consumo eléctrico del equipo o en las emisiones de radiofrecuencia.

### Medidas comunes
- Blindaje electromagnético.
- Aislamiento físico.
- Ubicación de equipos en zonas seguras.
- Uso de dispositivos certificados (equipamiento TEMPEST).

