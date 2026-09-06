# Modelo System (Procesamiento) - Eventos y Acciones

## Descripción General
Este modelo describe el comportamiento del módulo de procesamiento principal (`System`), implementado como una máquina de estados temporizada (`Update by Time Code`, período = 1 ms). Su función es recibir las señales estables provistas por el modelo `Sensor` y determinar las acciones del sistema, enviando eventos de control hacia el modelo `Actuator`.

## Convención de Identificadores
* **Event (Trigger/Signal Input):** `EV_SYS_NAME` (Señales recibidas desde el módulo Sensor)[cite: 2]
* **Signal (Output):** `EV_ACT_NAME` (Señales enviadas al módulo Actuator)[cite: 2]
* **State:** `ST_SYS_NAME`
* **Timer:** `tick` / `DEL_SYS_NAME`[cite: 2]

## Eventos Recibidos (Triggers / Signals Input)
* `EV_SYS_DOWN`: Señal enviada por el modelo Sensor que indica que el botón fue presionado de forma estable.
* `EV_SYS_UP`: Señal enviada por el modelo Sensor que indica que el botón fue liberado de forma estable.

## Acciones y Señales Generadas (Outputs)
* `EV_ACT_LED_ON`: Señal enviada al modelo Actuator para encender la indicación luminosa (ej. barrera abierta / ticket procesado).
* `EV_ACT_LED_OFF`: Señal enviada al modelo Actuator para apagar la indicación luminosa (ej. estado de espera / barrera cerrada).
* `EV_ACT_LED_BLINK`: Señal enviada al modelo Actuator para iniciar un modo de parpadeo (ej. procesamiento o advertencia).
