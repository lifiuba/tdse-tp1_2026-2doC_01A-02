# Abordaje del Problema: Parking Ticket Dispenser Machine (Entry)

## 1. Descripción de la Solución Comercial (COMA Electronics)
Referencia: *Intelligent Parking Management System - Automated Parking System - Parking Ticket Dispenser Machine (Entry)*.

La solución de COMA Electronics comprende un sistema integral de control de accesos vehiculares desatendido compuesto por:
- **Tótem dispensador de tickets de entrada:** Provisto de pantalla LCD de 7", lector de tarjetas, intercomunicador/botón de ayuda, ranura y pulsador dispensador de tickets (*Ticket Button* e *Intercom/Ticket Slot*).
- **Detección vehicular:** Espiras inductivas embebidas en el pavimento (*Sensor Coil / Loop Detector*) o trigger por radar para constatar la presencia vehicular en la estación de entrada y a la salida de la barrera.
- **Cámara motorizada con iluminación automática:** Captura fotográfica y lectura de patente (LPR/ANPR) en la entrada.
- **Barrera de alta velocidad:** Con accionamiento automático por radar/lógica para apertura y cierre seguro tras el cruce vehicular.
- **Display LED de plazas vacantes y Servidor central:** Gestión del inventario de cocheras y almacenamiento en base de datos.

---

## 2. Implementación de Parking Ticket Dispenser Machine (Entry)
Para el desarrollo en sistemas embebidos, se implementa una arquitectura basada en **Ejecutivo Cíclico** con período de actualización de **1 ms** (*Update by Time Code, period = 1mS*), dividiendo las funciones en tres módulos cooperativos no bloqueantes:

- **Escrutar (Módulo Sensor):** Monitorea las entradas digitales, procesando el filtrado temporal por software.
- **Procesar (Módulo System):** Ejecuta la máquina de estados de control que define el flujo del ticket, validación y apertura.
- **Actuar (Módulo Actuator):** Comanda los periféricos de salida mediante señales y temporizadores locales.

### Mapeo con Hardware de Evaluación
Para la verificación y prueba en placas de prototipado:
- **Sensores reales reemplazados por Entradas Digitales (Pulsadores / DIP Switches):**
  - `Sensor Coil` (detección de vehículo presente) $\rightarrow$ Interruptor DIP / Pulsador.
  - `Button` (solicitud manual de ticket) $\rightarrow$ Pulsador (Button).
  - `Camera` (confirmación de lectura/captura) $\rightarrow$ Interruptor DIP / Pulsador.
- **Actuadores reales reemplazados por Salidas Digitales (LEDs):**
  - `Display` (interfaz visual/estado) $\rightarrow$ LED.
  - `Printer` (impresión y emisión de ticket) $\rightarrow$ LED.
  - `Barrier` (motor de apertura de barrera) $\rightarrow$ LED.
  - `Server` (comunicación hacia el servidor) $\rightarrow$ LED.

---

## 3. Modelos de Comportamiento de los Módulos de Código C (Período = 1 ms)

Cada módulo se formaliza mediante una **Máquina de Estados Finitos (Statechart)**:

1. **Módulo Sensor (`sensor.c`):**
   - **Propósito:** Escrutar las entradas digitales binarias.
   - **Modelo:** FSM con filtrado antirrebote (*debouncer*) gobernada por un temporizador por software (`tick` cada 1 ms) para discriminar ruidos eléctricos transitorios y emitir eventos estables hacia el sistema.
2. **Módulo Sistema (`system.c`):**
   - **Propósito:** Procesar la lógica secuencial del acceso vehicular.
   - **Modelo:** FSM reactiva impulsada por eventos (*Event-Driven*). Transiciona entre estados (`IDLE`, `VEHICLE_DETECTED`, `PRINTING_TICKET`, `WAITING_PASSAGE`, etc.) evaluando condiciones de guarda y disparando acciones hacia los actuadores.
3. **Módulo Actuador (`actuator.c`):**
   - **Propósito:** Actuar sobre los indicadores y salidas físicas.
   - **Modelo:** FSM temporizada que recibe comandos de activación y gestiona la cadencia de los LEDs (encendido, apagado, destellos o pulsos temporizados de duración finita).