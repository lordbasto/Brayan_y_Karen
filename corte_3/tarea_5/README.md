# Proyecto Final – Sistemas Operativos

Este repositorio presenta el desarrollo de tres proyectos prácticos que exploran conceptos clave de simulación, programación gráfica y contenedores Docker. Se realizaron las siguientes actividades:

- Simulación de un **circuito seguidor de línea** en Python con `tkinter`
- Desarrollo de un **juego tipo arcade** de **naves espaciales**
- Implementación y despliegue de un **nodo ROS (Robot Operating System)** en Docker

---

## 🧭 Índice

- [1. Seguidor de Línea (Tkinter)](#1-seguidor-de-línea-tkinter)
- [2. Juego de Naves Espaciales](#2-juego-de-naves-espaciales)
- [3. ROS en Docker](#3-ros-en-docker)
- [4. Ejecución de los proyectos](#4-ejecución-de-los-proyectos)
- [5. Autor y Créditos](#5-autor-y-créditos)

---

## 1. Seguidor de Línea (Tkinter)

📁 Repositorio base:  
[Carro_tkinter – GitHub](https://github.com/dialejobv/Sistemas_Operativos/tree/main/2%29%20Carro_tkinter)

### 🧩 Descripción
Simulación de un pequeño robot que sigue una línea curva trazada sobre una pista virtual utilizando el módulo `tkinter`.

### 🎯 Personalización
- Se diseñó una pista con **tres curvas** pronunciadas.
- Se mejoró el comportamiento del sensor.
- El movimiento se optimizó para hacer giros más suaves.

### 🖼️ Captura
![Seguidor de Línea](https://github.com/lordbasto/Brayan_y_Karen/blob/main/corte_3/tarea_5/WhatsApp%20Image%202025-05-27%20at%208.06.14%20PM.jpeg)

---

## 2. Juego de Naves Espaciales

📁 Repositorio base:  
[Nave_espacial – GitHub](https://github.com/dialejobv/Sistemas_Operativos/tree/main/3%29%20Nave_espacial)

### 🧩 Descripción
Un juego estilo arcade en el que el jugador controla una nave espacial que dispara proyectiles para destruir enemigos antes de ser alcanzado.

### 🎮 Mejoras
- Nuevos gráficos para la nave y los enemigos.
- Fondo animado tipo galaxia.
- Contador de puntuación y vidas.
- Efectos de sonido añadidos.

### 🖼️ Captura
![Juego de Naves](./f183a13f-f5b9-454d-bcff-c3e464e5f19b.jpg)

---

## 3. ROS en Docker

📦 Este fue el único proyecto **empaquetado y ejecutado en Docker**.

### 🧩 Descripción
Se construyó una imagen Docker con ROS Noetic y el simulador `turtlesim`, permitiendo simular el entorno ROS sin instalarlo localmente.

### 🚀 Pasos para ejecutar

1. **Construcción de la imagen**

```bash
docker build -t ros_turtle -f Dockerfile.ros .
```

2. **Ejecución del contenedor**

```bash
docker run -it --rm ros_turtle
```

3. **Comandos dentro del contenedor**

```bash
# Iniciar el núcleo de ROS
roscore
```

4. **En otro terminal (opcional)**

```bash
docker exec -it <container_id> bash
rosrun turtlesim turtlesim_node
rosrun turtlesim turtle_teleop_key
```

---

## 4. Ejecución de los proyectos

### 🔧 Requisitos

- Python 3.x
- Docker (solo para ROS)

### ▶️ Instrucciones

#### A. Seguidor de línea y nave espacial (Python)

```bash
python3 main.py
python3 juego.py
```

#### B. ROS en Docker

Ver la sección [3. ROS en Docker](#3-ros-en-docker)

---

## 5. Autor y Créditos

- 👨‍💻 Autores: **[Karen Garcia y Brayan Poloche]**
- 🧠 Curso: Sistemas Operativos
- 🏫 Universidad: [Universidad Santo Tomas]
- 🗂️ Año: 2025

---
