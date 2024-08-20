# ota-5t-buf

- Description: A simple buffer using a 5-transistor OTA
- PDK: sky130A

## Authorship

- Designer: Boris Murmann
- Company: University of Hawaii
- Created: August 19, 2024
- License: Apache 2.0
- Last modified: None

## Pins

- VDD
  + Description: Positive analog power supply
  + Type: power
  + Direction: inout
  + Vmin: 1.7
  + Vmax: 1.9
- VSS
  + Description: Analog ground
  + Type: ground
  + Direction: inout
- Vp
  + Description: Voltage positive input
  + Type: signal
  + Direction: input
- Vn
  + Description: Voltage negative input
  + Type: signal
  + Direction: input
- Vout
  + Description: Voltage output
  + Type: signal
  + Direction: output

## Default Conditions

- vdd
  + Description: Analog power supply voltage
  + Display: Vdd
  + Unit: V
  + Typical: 1.8
- vcm
  + Description: Input common mode voltage
  + Display: Vcm
  + Unit: V
  + Typical: 0.9
- corner
  + Description: Process corner
  + Display: Corner
  + Typical: tt
- temperature
  + Description: Ambient temperature
  + Display: Temp
  + Unit: °C
  + Typical: 27

## Symbol

![Symbol of ota-5t-buf](ota-5t-buf_symbol.svg)

## Schematic

![Schematic of ota-5t-buf](ota-5t-buf_schematic.svg)

## Layout

![Layout of ota-5t-buf with white background](ota-5t-buf_w.png)
![Layout of ota-5t-buf with black background](ota-5t-buf_b.png)
