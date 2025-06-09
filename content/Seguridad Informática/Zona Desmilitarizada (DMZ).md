# Zona Desmilitarizada (DMZ)

%%
Date:: [[2025-06-09]]
Course:: [[Seguridad Informática]]
Source:: [[]]
%%

La **DMZ** (zona desmilitarizada, por sus siglas en inglés: _Demilitarized Zone_) es un concepto de seguridad en redes que tiene como objetivo **aislar ciertos dispositivos o servicios del resto de la red interna**, al mismo tiempo que se les permite cierto acceso desde el exterior (por ejemplo, desde Internet).

### ¿Qué es la DMZ en una red?

En el contexto de una red, una **DMZ** es una **subred intermedia** que actúa como una zona de contención entre la red interna segura (LAN) y la red externa (como Internet). Se utiliza para alojar servidores que necesitan estar accesibles públicamente, como:

- servidores web
- servidores de correo
- servidores FTP

**Objetivo:** Si un atacante compromete un servidor en la DMZ, no tendrá acceso directo a la red interna, ya que la DMZ está aislada por cortafuegos (_firewalls_).

---

### ¿Qué es la DMZ en un router doméstico?

En muchos routers domésticos, la opción "DMZ" **no es una verdadera DMZ** como en redes empresariales, sino una **simplificación** del concepto.

En este caso, **el router reenvía todo el tráfico entrante no solicitado a una IP específica** de la red local (por ejemplo, una consola de videojuegos o un servidor casero). Es decir, **esa IP queda expuesta completamente a Internet**, sin las protecciones del firewall del router.

**Ejemplo típico:**

- Tienes una PlayStation y algunos juegos tienen problemas de NAT.
- Activás la opción "DMZ" en el router y apuntás a la IP de la consola.
- Ahora todo el tráfico entrante llega sin restricciones a la PlayStation.

⚠️ **Peligros:** usar la DMZ en un router doméstico puede dejar expuesto ese dispositivo a ataques, porque **recibe todo el tráfico externo** sin filtrado.

---
### En resumen:

| Concepto          | En redes empresariales                | En routers domésticos                     |
| ----------------- | ------------------------------------- | ----------------------------------------- |
| ¿Qué es?          | Subred protegida entre LAN e Internet | Reenvío de todo el tráfico a una IP local |
| ¿Para qué se usa? | Aislar servidores expuestos           | Evitar problemas de NAT o puertos         |
| ¿Es seguro?       | Sí, si se configura bien              | No del todo: expone el dispositivo        |
