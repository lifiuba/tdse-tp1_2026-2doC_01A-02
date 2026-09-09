# Modelo System (Procesamiento) - Eventos y Acciones

## Descripción General

Este modelo describe el comportamiento del módulo de procesamiento principal (`System`), implementado como una máquina de estados temporizada (`Update by Time Code`, período = 1 ms).

Su función es recibir las señales generadas por el modelo `Sensor`, procesar la secuencia de ingreso del vehículo y generar las señales de control necesarias hacia el modelo `Actuator`, particularmente para la apertura y cierre de la barrera.

El sistema permanece inicialmente a la espera de la llegada de un vehículo. Una vez detectado, espera la pulsación del botón, ordena la apertura de la barrera, mantiene dicha condición durante un intervalo de 10 segundos y posteriormente espera la detección del vehículo por el sensor. Finalmente, cuando se detecta que el vehículo abandonó la zona de ingreso, se ordena el cierre de la barrera y el sistema retorna a su estado inicial.

## Convención de Identificadores

* **Event (Trigger / Signal Input):** `EV_SYS_NAME`  
  Señales recibidas desde el módulo `Sensor`.

* **Signal (Output):** `EV_ACT_NAME`  
  Señales enviadas desde el módulo `System` hacia el módulo `Actuator`.

* **State:** `ST_SYS_NAME`

* **Timer:** `after TIME`

## Eventos Recibidos (Triggers / Signals Input)

* `EV_SYS_CAR_ARRIVES`: Señal que indica que un vehículo llegó a la zona de ingreso y fue detectado por el sistema.

* `EV_SYS_BUTTON_PRESSED`: Señal que indica que el botón de ingreso fue presionado de forma estable.

* `EV_SYS_SENSOR_CAR`: Señal que indica que el vehículo continúa siendo detectado por el sensor correspondiente.

* `EV_SYS_CAR_LEAVES`: Señal que indica que el vehículo abandonó la zona de detección luego de atravesar la barrera.

## Eventos Temporizados

* `after 10 s`: Evento temporal que se produce luego de permanecer 10 segundos en el estado `ST_SYS_BARRIER_OPEN`. Una vez transcurrido este tiempo, el sistema pasa al estado `ST_SYS_SENSOR_WAIT`.

## Acciones y Señales Generadas (Outputs)

* `EV_ACT_BARRIER_OPEN`: Señal enviada al modelo `Actuator` para ordenar la apertura de la barrera.

* `EV_ACT_BARRIER_CLOSE`: Señal enviada al modelo `Actuator` para ordenar el cierre de la barrera.

## Estados del Sistema

* `ST_SYS_CAR_WAIT`: Estado inicial. El sistema permanece a la espera de la llegada de un vehículo.

* `ST_SYS_BUTTON_WAIT`: El vehículo fue detectado y el sistema permanece a la espera de que el usuario presione el botón.

* `ST_SYS_BARRIER_OPEN`: La barrera recibió la orden de apertura y el sistema permanece en este estado durante 10 segundos.

* `ST_SYS_SENSOR_WAIT`: El sistema espera la información proveniente del sensor para determinar si el vehículo continúa presente o si ya abandonó la zona de ingreso.

## System Statechart - State Transition Table

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Initial** | - | - | `ST_SYS_CAR_WAIT` | - |
| `ST_SYS_CAR_WAIT` | `EV_SYS_CAR_ARRIVES` | - | `ST_SYS_BUTTON_WAIT` | - |
| `ST_SYS_BUTTON_WAIT` | `EV_SYS_BUTTON_PRESSED` | - | `ST_SYS_BARRIER_OPEN` | `raise EV_ACT_BARRIER_OPEN` |
| `ST_SYS_BARRIER_OPEN` | `after 10 s` | - | `ST_SYS_SENSOR_WAIT` | - |
| `ST_SYS_SENSOR_WAIT` | `EV_SYS_SENSOR_CAR` | - | `ST_SYS_SENSOR_WAIT` | - |
| `ST_SYS_SENSOR_WAIT` | `EV_SYS_CAR_LEAVES` | - | `ST_SYS_CAR_WAIT` | `raise EV_ACT_BARRIER_CLOSE` |
