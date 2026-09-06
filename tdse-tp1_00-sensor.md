# Modelo Sensor (Pulsador) - Eventos y Acciones

## Descripción General
Este modelo describe el comportamiento de un módulo de código C temporizado (`Update by Time Code`, período = 1 ms) encargado de **escrutar** el estado de un pulsador binario para el control de entrada del estacionamiento. El módulo gestiona el filtrado de rebotes (*debouncing*) mediante el uso de timers (`tick`).

## Convención de Identificadores
* **Event (Trigger):** `EV_BTN_NAME` (Posiciones de la señal)
* **Signal (Output):** `EV_SYS_NAME` (Eventos generados para el modelo System)
* **State:** `ST_BTN_NAME`
* **Timer:** `tick` (ej. `0`, `DEL_BTN_NAME`)

## Eventos (Triggers)
* `EV_BTN_DOWN`: Se detecta un nivel bajo/activo en la entrada digital del pulsador (botón presionado).
* `EV_BTN_UP`: Se detecta un nivel alto/inactivo en la entrada digital del pulsador (botón liberado).
* `EV_BTN_ERROR`: Se detecta un nivel alto/bajo pero por un tiempo extremadamente corto en la entrada digital del pulsador (error, mantiene su estado previo).

## Acciones y Señales
* `EV_SYS_BTN_PRESSED`: Señal enviada al modelo System cuando se confirma que el pulsador ha sido presionado de forma estable (superado el tiempo de antirrebote).
* `EV_SYS_BTN_RELEASED`: Señal enviada al modelo System cuando se confirma que el pulsador ha sido liberado de forma estable.
* `tick = 0`: Inicialización del contador de tiempo para el filtrado de rebotes.
* `tick++`: Incremento del timer temporizado cada 1 ms (`Update by Time Code`).
