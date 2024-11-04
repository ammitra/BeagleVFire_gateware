#  Robotics Cape

## P8 Header

| Signal | Control                    | Irq # | Description                |
|--------|----------------------------|-------|----------------------------|
| P8_1   | n/a                        |  n/a  | GND                        |
| P8_2   | n/a                        |  n/a  | GND                        |
| P8_3   | MSS GPIO_2[0]              |   53  | User LED 0                 |
| P8_4   | MSS GPIO_2[1]              |   53  | User LED 1                 |
| P8_5   | MSS GPIO_2[2]              |   53  | User LED 2                 |
| P8_6   | MSS GPIO_2[3]              |   53  | User LED 3                 |
| P8_7   | MSS GPIO_2[4]              |   53  | User LED 4                 |
| P8_8   | MSS GPIO_2[5]              |   53  | User LED 5                 |
| P8_9   | MSS GPIO_2[6]              |   53  | User LED 6                 |
| P8_10  | MSS GPIO_2[7]              |   53  | User LED 7                 |
| P8_11  | MSS GPIO_2[8]              |   53  | User LED 8                 |
| P8_12  | MSS GPIO_2[9]              |   53  | User LED 9                 |
| P8_13  | core_pwm[1] @ 0x41500000   |  n/a  | PWM_2:1                    |
| P8_14  | MSS GPIO_2[11]             |   53  | User LED 11                |
| P8_15  | MSS GPIO_2[12]             |   53  | GPIO                       |
| P8_16  | MSS GPIO_2[13]             |   53  | GPIO                       |
| P8_17  | MSS GPIO_2[14]             |   53  | GPIO                       |
| P8_18  | MSS GPIO_2[15]             |   53  | GPIO                       |
| P8_19  | core_pwm[0] @ 0x41500000   |  n/a  | PWM_2:0                    |
| P8_20  | MSS GPIO_2[17]             |   53  | GPIO                       |
| P8_21  | MSS GPIO_2[18]             |   53  | GPIO                       |
| P8_22  | MSS GPIO_2[19]             |   53  | GPIO                       |
| P8_23  | MSS GPIO_2[20]             |   53  | GPIO                       |
| P8_24  | MSS GPIO_2[21]             |   53  | GPIO                       |
| P8_25  | MSS GPIO_2[22]             |   53  | GPIO                       |
| P8_26  | MSS GPIO_2[23]             |   53  | GPIO                       |
| P8_27  | Servo 1 @ 0x4100_0000      |  n/a  | Servo 1 control            |
| P8_28  | Servo 2 @ 0x4100_0004      |  n/a  | Servo 2 control            |
| P8_29  | Servo 3 @ 0x4100_0008      |  n/a  | Servo 3 control            |
| P8_30  | Servo 4 @ 0x4100_000C      |  n/a  | Servo 4 control            |
| P8_31  | core_gpio[0] @ 0x4110_0000 |  126  | GPIO                       |
| P8_32  | core_gpio[1] @ 0x4110_0000 |  127  | GPIO                       |
| P8_33  | Read encoder @ 0x4130_0010 |  128  | Rotary Encoder 1 - input B |
| P8_34  | core_gpio[3] @ 0x4110_0000 |  129  | GPIO                       |
| P8_35  | Read encoder @ 0x4130_0010 |  130  | Rotary Encoder 1 - input A |
| P8_36  | core_gpio[5] @ 0x4110_0000 |  131  | GPIO                       |
| P8_37  | core_gpio[6] @ 0x4110_0000 |  132  | GPIO                       |
| P8_38  | core_gpio[7] @ 0x4110_0000 |  133  | GPIO                       |
| P8_39  | Servo 5 @ 0x4100_0010      |  n/a  | Servo 5 control            |
| P8_40  | Servo 6 @ 0x4100_0014      |  n/a  | Servo 6 control            |
| P8_41  | Servo 7 @ 0x4100_0018      |  n/a  | Servo 7 control            |
| P8_42  | Servo 8 @ 0x4100_001C      |  n/a  | Servo 8 control            |
| P8_43  | core_gpio[12] @ 0x411_00000|  138  | GPIO                       |
| P8_44  | core_gpio[13] @ 0x411_00000|  139  | GPIO                       |
| P8_45  | core_gpio[14] @ 0x411_00000|  140  | GPIO                       |
| P8_46  | core_gpio[15] @ 0x411_00000|  141  | GPIO                       |

## P9 Header

| Signal | Control                    | Irq # | Description                |
|--------|----------------------------|-------|----------------------------|
| P9_1   | n/a                        |  n/a  | GND                        |
| P9_2   | n/a                        |  n/a  | GND                        |
| P9_3   | n/a                        |  n/a  | VCC 3.3V                   |
| P9_4   | n/a                        |  n/a  | VCC 3.3V                   |
| P9_5   | n/a                        |  n/a  | VDD 5V                     |
| P9_6   | n/a                        |  n/a  | VDD 5V                     |
| P9_7   | n/a                        |  n/a  | SYS 5V                     |
| P9_8   | n/a                        |  n/a  | SYS 5V                     |
| P9_9   | n/a                        |  n/a  | NC                         |
| P9_10  | n/a                        |  n/a  | SYS_RSTN                   |
| P9_11  |                            |       |                            |
| P9_12  | core_gpio[0] @ 0x4120_0000 |  142  | GPIO                       |
| P9_13  | core_gpio[7] @ 0x4120_0000 |  149  | GPIO                       |
| P9_14  | core_pwm[0] @ 0x4140_0000  |  n/a  | PWM_1:0                    |
| P9_15  | core_gpio[1] @ 0x4120_0000 |  143  | GPIO                       |
| P9_16  | core_pwm[1] @ 0x4140_0000  |  n/a  | PWM_1:1                    |
| P9_17  |                            |       |                            |
| P9_18  |                            |       |                            |
| P9_19  | MSS I2C0                   |   58  | I2C0 SCL                   |
| P9_20  | MSS I2C0                   |   58  | I2C0 SDA                   |
| P9_21  |                            |       |                            |
| P9_22  |                            |       |                            |
| P9_23  | core_gpio[2] @ 0x4120_0000 |  144  | GPIO                       |
| P9_24  |                            |       |                            |
| P9_25  | core_gpio[3] @ 0x4120_0000 |  145  | GPIO                       |
| P9_26  |                            |       |                            |
| P9_27  | Read encoder @ 0x4130_0000 | n/a   | Rotary Encoder 0 - input B |
| P9_28  |                            |       |                            |
| P9_29  |                            |       |                            |
| P9_30  | core_gpio[5] @ 0x4120_0000 |  147  | GPIO                       |
| P9_31  |                            |       |                            |
| P9_32  | n/a                        |  n/a  | VDD ADC                    |
| P9_33  | n/a                        |  n/a  | ADC input 4                |
| P9_34  | n/a                        |  n/a  | AGND                       |
| P9_35  | n/a                        |  n/a  | ADC input 6                |
| P9_36  | n/a                        |  n/a  | ADC input 5                |
| P9_37  | n/a                        |  n/a  | ADC input 2                |
| P9_38  | n/a                        |  n/a  | ADC input 3                |
| P9_39  | n/a                        |  n/a  | ADC input 0                |
| P9_40  | n/a                        |  n/a  | ADC input 1                |
| P9_41  | core_gpio[6] @ 0x4120_0000 |  148  | GPIO                       |
| P9_42  | Read encoder @ 0x4130_0000 |  n/a  | Rotary Encoder 0 - input A |
| P9_43  | n/a                        |  n/a  | GND                        |
| P9_44  | n/a                        |  n/a  | GND                        |
| P9_45  | n/a                        |  n/a  | GND                        |
| P9_46  | n/a                        |  n/a  | GND                        |

# Servos control

Each servo is controlled by a pulse repeating repeating every 20 milliseconds.
A control register is associated with each servo allowing controlling the width
of the control pulse from 0.9 to 2.1 milliseconds. The control value, in
microseconds is added to 0.9 milliseconds to specify the control pulse width.
For example, writing value 1200 in a servo's control register will result in a
2.1 milliseconds pulse (0.9 milliseconds plus 1.2 milliseconds).
The width of the control pulse is capped at 2.1 milliseconds. Writing a large
value in a servo's control register will result in a maximum pulse width of 2.1
milliseconds.
