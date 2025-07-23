# matlab-arduino-sine-led
MATLAB to Arduino sin wave LED project
# MATLAB-Arduino Sine Wave LED Project

This simple project sends a sine wave from MATLAB to Arduino to control the brightness of an LED (like a breathing light). Arduino then inverts the signal and sends it back to MATLAB, which displays both signals in real-time on a graph.

---

## 🧰 What You Need

- A computer with:
  - [MATLAB](https://www.mathworks.com/products/matlab.html) installed  
  - [Arduino IDE](https://www.arduino.cc/en/software) installed  
  - [GitHub Desktop](https://desktop.github.com/) installed (optional but helpful)
- One Arduino board (e.g., UNO)
- One LED and a 220Ω resistor
- One USB cable (to connect Arduino)

---

## 🪛 Circuit Wiring (Super Simple)

1. Connect the **long leg** of the LED to **pin D9** on the Arduino.
2. Connect the **short leg** to **a 220Ω resistor**, and connect the other end of the resistor to **GND**.


---

## 🖥️ How to Run the Project

### Step 1: Download This Project

- Click the green **Code** button on this GitHub page.
- Select **Download ZIP**.
- Unzip the folder and open it.

---

### Step 2: Upload the Arduino Code

1. Open the file `arduino_sine_led.ino` using Arduino IDE.
2. Select the correct **Board** (e.g., Arduino UNO) and **Port** (COMx) under "Tools".
3. Click the **Upload** button (the ➡️ arrow icon).

---

### Step 3: Run the MATLAB Code

1. Open MATLAB.
2. Open the file `matlab_plot_led.m`.
3. Make sure the COM port in the code (e.g., `"COM6"`) matches your Arduino’s port.
4. Press the **Run** button (green ▶️) in MATLAB.

You’ll see:
- The LED slowly breathing (changing brightness).
- A live graph showing:
  - **Blue line**: the original sine wave sent from MATLAB.
  - **Red dashed line**: the inverted signal returned from Arduino.

---

## 📁 File Descriptions

| File | Purpose |
|------|---------|
| `arduino_sine_led.ino` | Controls the LED and sends the inverted signal back to MATLAB |
| `matlab_plot_led.m` | Sends sine wave values to Arduino and plots both signals |

---

## 🙋 FAQ – Troubleshooting

**Q: Arduino upload fails?**  
A: Check if you selected the right **Board** and **Port** in the Arduino IDE under “Tools”.

**Q: MATLAB can’t connect to Arduino?**  
A: Open Arduino IDE and check which **COM port** is being used. Update the `"COMx"` string in MATLAB accordingly.

**Q: The LED doesn’t blink or graph doesn’t move?**  
A: Make sure the LED is wired correctly. You can also restart the program in MATLAB by pressing "Stop" and then "Run" again.

---

## 🎯 Why This Project Matters

This project helps you learn:

- How to use MATLAB to control Arduino via serial communication.
- How to generate and send sine wave signals using code.
- How to receive and visualize real-time data in MATLAB.
- How to invert and reflect values using simple math logic.

This lays the foundation for future work in sensor data analysis and control systems using MATLAB + Arduino.

---

## 🙌 Author

Created by **[Your Name]** as part of an early exploration into real-time hardware-software integration using MATLAB and Arduino.
