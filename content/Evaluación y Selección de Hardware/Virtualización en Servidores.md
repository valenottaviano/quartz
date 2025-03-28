# Virtualización en Servidores

%%
Date:: [[2025-03-27]]
Course:: [[Evaluación y Selección de Hardware]]
Source:: [[]]
%%


[[Sistemas Operativos/Virtualización|Virtualización]]


**¿Qué es la Virtualización?** La virtualización consiste en crear mediante software una versión virtual de recursos tecnológicos como hardware, sistemas operativos, almacenamiento, o redes. La virtualización abstrae los recursos físicos, lo que permite ejecutar múltiples máquinas virtuales (VM) en un solo hardware físico, gestionadas por un software conocido como Hypervisor o VMM (Virtual Machine Monitor).

## **Componentes Clave:**

- **Hypervisor (VMM)**: Software que maneja, gestiona y distribuye dinámicamente recursos entre las máquinas virtuales, permitiendo ejecutar varios sistemas operativos simultáneamente en un mismo equipo físico.
- **Máquina Virtual (VM)**: Simulación de una plataforma de hardware autónoma, incluyendo un sistema operativo completo.

## **Tipos de Virtualización:**

1. **Virtualización de Plataforma**:
    - **Emulación/Simulación**: Simula hardware completo (ej. emulador MAME).
    - **Virtualización Completa**: Simula el hardware suficiente para ejecutar un sistema operativo huésped sin modificar (ej. VMware Workstation, Oracle VM VirtualBox).
    - **Paravirtualización**: No simula completamente hardware, ofrece API especiales al sistema operativo huésped modificado (ej. XEN, VMware Server ESX).
    - **A nivel del sistema operativo**: El anfitrión y huésped comparten sistema operativo.
    - **A nivel de kernel**: Requiere soporte hardware (Intel VT, AMD-V) e integrado en kernels modernos como Linux (ej. KVM).
2. **Virtualización Parcial (Address Space Virtualization)**:
    - Simula múltiples instancias del entorno de hardware, particularmente espacios de direcciones, pero no permite sistemas operativos huéspedes separados.
3. **Virtualización por Sistema Operativo**:
    - Se crean entornos virtuales aislados en un único servidor físico, maximizando administración y rendimiento (ej. Parallels Virtuozzo).

## **Hypervisores según Instalación:**

- **Tipo I (Bare-Metal)**: Instalado directamente sobre el hardware físico (ej. VMware ESXi, Hyper-V).
- **Tipo II (Hosted)**: Instalado sobre un sistema operativo existente (ej. VMware Workstation, Oracle VirtualBox).

## **Ventajas de la Virtualización:**

- Reutilización eficiente de hardware.
- Reducción de costos y espacio.
- Gestión centralizada y simplificada.
- Rápida incorporación de recursos.
- Creación de entornos de prueba seguros.
- Migración en caliente sin pérdida de servicio.
- Menor consumo energético (Green IT).

## **Soporte Hardware:**

- Intel VT (Vanderpool)
- AMD-V (Pacifica)

## **Software para Virtualizar:**

- **Pagos**: VMware, Hyper-V, Parallels Virtuozzo
- **Gratuitos/Libres**: VirtualBox, XEN, OpenVZ