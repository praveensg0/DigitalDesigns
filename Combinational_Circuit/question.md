## LED Control Based on Environmental Conditions

### Overview
This project implements a combinational circuit to control an LED based on specific environmental conditions: the presence of sunlight, the movement of a person, and whether that person is moving with a vehicle.

### Requirements
The LED should turn on only when all of the following conditions are met:
- Sun is not present (S = 0)
- Person is moving (P = 1)
- Person is moving with a vehicle (V = 1)

### Inputs and Outputs
- **Inputs:**
  - `S` (Sunlight Presence): 1 if sunlight is present, 0 otherwise.
  - `P` (Person Movement): 1 if a person is moving, 0 otherwise.
  - `V` (Vehicle Movement): 1 if a person is moving with a vehicle, 0 otherwise.

- **Output:**
  - `LED`: 1 if the LED should be turned on, 0 otherwise.

### Boolean Expression
The Boolean expression for the LED control is:
LED = S & P & V


### Truth Table

| S | P | V | LED |
|---|---|---|-----|
| 0 | 0 | 0 | 0   |
| 0 | 0 | 1 | 0   |
| 0 | 1 | 0 | 0   |
| 0 | 1 | 1 | 0   |
| 1 | 0 | 0 | 0   |
| 1 | 0 | 1 | 0   |
| 1 | 1 | 0 | 0   |
| 1 | 1 | 1 | 1   |

### Rules for Modeling Combinational Circuits

1. **LHS:** Must be a wire data-type variable.
2. **RHS:** Can have a wire, register, or a combination of both.
3. **Signal Lengths:** Must be equal on both sides.
4. **Feedback:** Not allowed.
