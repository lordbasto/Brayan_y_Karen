
# Asistente Conversacional con Pepper usando Vosk y DeepSeek

Este proyecto consiste en la implementación de un asistente conversacional utilizando el robot humanoide **Pepper** junto con tecnologías de reconocimiento de voz y generación de lenguaje natural. Se emplea **Vosk** para transcripción en tiempo real y **DeepSeek** para la generación de respuestas conversacionales. Este README describe el procedimiento completo desarrollado para abordar el reto propuesto.

---

## 🎯 Objetivo del Reto

Desarrollar un sistema que permita a Pepper:
- Escuchar y transcribir lo que dice un humano.
- Enviar ese texto a un modelo conversacional (IA).
- Recibir la respuesta de la IA.
- Reproducir dicha respuesta en voz usando su sistema de síntesis.

---

## 🧠 Paso a Paso

### 1. Instalación de Vosk y PyAudio

Se comenzó instalando las bibliotecas necesarias:

```bash
pip install vosk pyaudio
```

Luego, se descargó el modelo de Vosk en español desde:

> https://alphacephei.com/vosk/models


```bash
wget https://alphacephei.com/vosk/models/vosk-model-small-es-0.42.zip
unzip vosk-model-small-es-0.42.zip
```

---

### 2. Captura de Voz con PyAudio y Transcripción con Vosk

Se desarrolló un script para capturar voz en tiempo real y transcribir el audio a texto. Esto permitió tener el input del usuario en lenguaje natural.

**Código clave:**
```python
from vosk import Model, KaldiRecognizer
import pyaudio

model = Model("vosk-model-small-es-0.42")
rec = KaldiRecognizer(model, 16000)
```

---

### 3. Envío del texto a la API de DeepSeek

Una vez transcrito el texto, se envió a la API de **DeepSeek**, un modelo LLM que responde en lenguaje natural.

**Fragmento del código:**

```python
import requests

url = "https://api.deepseek.com/v1/chat/completions"
headers = {"Authorization": f"Bearer {api_key}"}
data = {
  "model": "deepseek-chat",
  "messages": [
    {"role": "user", "content": texto_usuario}
  ]
}
response = requests.post(url, headers=headers, json=data)
```

---

### 4. Reproducción de la respuesta con Pepper

Utilizando el SDK de SoftBank Robotics, se hizo que Pepper pronunciara la respuesta generada:

```python
tts = session.service("ALTextToSpeech")
tts.say(respuesta_ia)
```

---

### 5. Interfaz integrada y prueba del sistema completo

Una vez integrados todos los módulos, se realizó una prueba completa: voz → texto → IA → voz.



---

## 🧪 Resultados

El sistema logró:

- Transcribir comandos hablados con buena precisión.
- Obtener respuestas contextuales desde DeepSeek.
- Reproducir la respuesta en voz con Pepper exitosamente.

---

## 📎 Requisitos

- Python 3.x
- Librerías: `vosk`, `pyaudio`, `requests`, `qi`
- Robot Pepper conectado en red
- Micrófono funcional

---

## 💬 Conclusiones

Este proyecto demuestra la posibilidad de integrar tecnologías de reconocimiento de voz, modelos LLM y robótica en un flujo coherente, accesible y útil en aplicaciones reales como asistentes conversacionales, soporte, educación y más.

---

## 👨‍💻 Integrantes

- Brayan Poloche  
- Karen García

---

## 📂 Archivos Adjuntos

- `Proyecto Tercer Corte` — Informe
- `vosk-model-small-es-0.42/` — Carpeta del modelo
- `README.md` — Este documento

---

## 🎥 Video Demostrativo

Puedes ver una demostración en video del funcionamiento del asistente conversacional con Pepper en el siguiente enlace:

[🔗 Ver en YouTube](https://youtu.be/D1sjyPCZerw)

---

## 🧾 Licencia

Proyecto académico y educativo. Se respetan las licencias de terceros (Vosk, DeepSeek, SoftBank Robotics).

---


