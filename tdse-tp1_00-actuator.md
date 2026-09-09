# Modelo Actuator (LED) - Eventos y Acciones

## Descripción General
Este modelo describe el comportamiento del módulo de actuación (`Actuator`), implementado como una máquina de estados temporizada (`Update by Time Code`, período = 1 ms). Su función es recibir las señales del módulo `System` y controlar el estado físico de una salida digital (LED). El módulo gestiona modos de funcionamiento como encendido, apagado o destello (*blink*) haciendo uso de un temporizador (`tick`).

## Convención de Identificadores
* **Event (Trigger/Signal Input):** `EV_ACT_NAME` / `EV_LED_NAME` (Señales recibidas desde el módulo System)
* **State:** `ST_ACT_NAME` / `ST_LED_NAME`
* **Timer:** `tick` / `DEL_ACT_NAME`

## Eventos Recibidos (Triggers / Signals Input)
* `EV_LED_ON`: Señal enviada por el modelo System para encender la salida digital.
* `EV_LED_OFF`: Señal enviada por el modelo System para apagar la salida digital.

## Acciones e Interfaz Hardware
* `led_on()`: Función o instrucción de bajo nivel para establecer en nivel alto (HIGH) la salida digital del LED.
* `led_off()`: Función o instrucción de bajo nivel para establecer en nivel bajo (LOW) la salida digital del LED.
* `tick = 0`: Inicialización del contador de tiempo para el control de temporizaciones (como la frecuencia de *blink*).
* `tick++`: Incremento del timer temporizado cada 1 ms (`Update by Time Code`)


## Actuator Statechart - State Transition Table

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Initial** | - | - | `ST_ACT_OFF` | - |
| `ST_ACT_OFF` | `EV_LED_ON` | - | `ST_ACT_ON` | `led_state = true` |
| `ST_ACT_ON` | `EV_LED_OFF` | - | `ST_ACT_OFF` | `led_state = false` |
