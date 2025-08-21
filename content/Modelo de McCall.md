# Modelo de McCall

%%
Date:: [[2025-08-21]]
Course:: [[Testing y Calidad]]
Source:: [[]]
%%


# Apunte Teórico: Modelo de Calidad de McCall

## Introducción

El **modelo de McCall** (1977), también conocido como **McCall’s Quality Model**, fue uno de los primeros intentos sistemáticos de definir y medir la **calidad del software**. Fue desarrollado por James McCall en el contexto de proyectos de software para la Fuerza Aérea de los Estados Unidos, en una época en la que la crisis del software evidenciaba la necesidad de establecer **estándares de calidad claros y medibles**.

El objetivo principal era **puentear la brecha entre los usuarios y los desarrolladores**, definiendo un conjunto de factores y criterios que permitieran evaluar y mejorar la calidad de un producto software.

---

## Estructura Conceptual del Modelo

El modelo de McCall organiza la calidad del software en **tres perspectivas principales**:

1. **Factores de calidad (Quality Factors)**
    - Características externas que interesan al **usuario** (ej.: usabilidad, confiabilidad).
    - Responden a la pregunta: _¿Qué tan bueno es el software?_
2. **Criterios de calidad (Quality Criteria)**
    - Atributos internos del software que permiten alcanzar los factores de calidad.
    - Son medibles y están más cerca del **desarrollo técnico**.
    - Ejemplo: modularidad, consistencia, concisión.
3. **Métricas de calidad (Quality Metrics)**
    - Indicadores cuantitativos que permiten medir los criterios.
    - Ejemplo: número de errores por mil líneas de código (KLOC).

📌 La relación entre estos niveles es jerárquica:  
**Factores ↔ Criterios ↔ Métricas**.

---

## Factores de Calidad de McCall

El modelo identifica **11 factores de calidad**, agrupados en tres grandes categorías:

![[Pasted image 20250821201631.png]]

### 1. Operación del producto

Relacionados con la forma en que el software funciona desde la perspectiva del usuario.

- **Corrección**: grado en que el software cumple los requisitos.
- **Confiabilidad**: capacidad de mantener su desempeño bajo condiciones específicas.
- **Eficiencia**: uso adecuado de recursos (tiempo, memoria).
- **Integridad**: protección frente a accesos no autorizados.
- **Usabilidad**: facilidad de uso y aprendizaje por parte del usuario.

### 2. Revisión del producto

Enfocados en la facilidad de modificar y mantener el software.

- **Mantenibilidad**: facilidad para corregir errores o hacer mejoras.
- **Flexibilidad**: capacidad para adaptarse a cambios en requisitos o entorno.
- **Prueba (Testabilidad)**: facilidad para diseñar y ejecutar pruebas.

### 3. Transición del producto

Vinculados con la portabilidad del software hacia otros entornos.

- **Portabilidad**: facilidad para trasladar a diferentes plataformas.
- **Reusabilidad**: posibilidad de reutilizar componentes en otros sistemas.
- **Interoperabilidad**: capacidad para interactuar con otros sistemas.

---

## Ventajas del modelo de McCall

- Fue **precursor** de modelos más modernos como **ISO 9126** e **ISO 25010**.
- Estableció un lenguaje común entre **usuarios, desarrolladores y evaluadores**.
- Ofrece una visión integral (operación, revisión y transición).

---

## Limitaciones

- Enfocado en el **software tradicional de los 70s-80s** (monolítico), menos aplicable a entornos ágiles y distribuidos modernos.
- Algunas métricas son difíciles de definir de manera uniforme.
- No contempla factores emergentes actuales como seguridad avanzada, escalabilidad en la nube o experiencia de usuario en sistemas móviles.
