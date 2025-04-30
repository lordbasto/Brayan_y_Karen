# Proyecto 2 – Virtualización y Monitoreo de Sistemas Operativos

**Autores:** Brayan Poloche, Karen García  
**Materia** Sistemas Operativos

---

## 🧠 Descripción General

Este proyecto tiene como objetivo la implementación de un entorno de virtualización y monitoreo distribuido. Se emplearon herramientas como **QEMU**, **Docker**, **Zabbix**, **Grafana** y **Prometheus** para desplegar múltiples sistemas operativos en máquinas virtuales y contenedores, así como para recopilar y visualizar métricas de rendimiento.

---

## 🧩 Arquitectura del Proyecto

La arquitectura integra máquinas virtuales y contenedores conectados a través de redes virtuales y herramientas de monitoreo centralizadas.

![Arquitectura del Proyecto](https://github.com/lordbasto/Brayan_y_Karen/blob/main/corte_2/proyecto/Sin%20t%C3%ADtulo.jpeg)

---

## 📋 Actividades Realizadas

### 🔹 Actividad 1 – Instalación de Máquinas Virtuales (QEMU)

- **Rocky Linux**: Configuración de subred y análisis de servicios.
- **Manjaro Linux**: Análisis de red y monitoreo de procesos.
- **Arch Linux**: Evaluación de gestión de discos y archivos.

> Herramientas utilizadas: `glances`, `iftop`, `nethogs`, `journalctl`, `ncdu`, `baobab`, `rsync`.

---

### 🔹 Actividad 2 – Instalación de Contenedores (Docker)

- **Garuda**: Análisis de hardware del sistema.
- **Alpine Linux**: Integración de Netdata para visualización en tiempo real.
- **Debian**: Gestión de logs usando `lnav` y `goaccess`.

> Herramientas adicionales: `ctop`, `lazydocker`.

---

### 🔹 Actividad 3 – Contenedor Central (Fedora)

- Creación de una imagen Fedora personalizada.
- Instalación de herramientas de red y monitoreo: `htop`, `ping`, `nmap`, `net-tools`.
- Conexión a todos los contenedores y máquinas virtuales mediante red Docker bridge.

---

### 🔹 Actividad 4 – Análisis desde el Contenedor Central

- Escaneo de puertos y servicios (`nmap`, `netstat`, `ss`).
- Monitoreo de procesos (`ps`, `htop`).
- Inspección de tráfico de red (`tcpdump`).
- Comprobación de conectividad (`ping`, `ip a`, `docker inspect`).

---

### 🔹 Actividad 5 – Monitoreo con Zabbix, Grafana y Prometheus

Se desarrolló un sistema de monitoreo distribuido con:

- **Zabbix**: Recolección de métricas y alertas.
- **Prometheus**: Almacenamiento de métricas.
- **Grafana**: Dashboards personalizables.
- **Netdata**: Visualización en tiempo real.
- **Node Exporter**: Agentes desplegados en todos los sistemas.

> Implementado con `docker-compose`.

---

## 📊 Flujo de Datos

1. **Node Exporter** → **Prometheus** (métricas)
2. **Prometheus** → **Grafana** (visualización)
3. **Zabbix** → alertas complementarias
4. **Netdata** → datos en tiempo real desde Alpine

---

## ✅ Requisitos

- Sistema host con Linux
- Docker y Docker Compose
- QEMU y KVM
- Red bridge configurada
- Acceso root/administrador

---


## 📁 Recursos

- 📄 [Informe PDF](https://github.com/lordbasto/Brayan_y_Karen/blob/main/corte_2/proyecto/Proyecto%202%20corte.pdf)
---

## 🧠 Conclusiones

Este proyecto consolidó conocimientos clave en virtualización, administración de sistemas y monitoreo. Se logró una arquitectura robusta que facilita la observación y análisis de múltiples entornos operativos en tiempo real, fortaleciendo así competencias en redes y DevOps.

---





