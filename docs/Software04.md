<!-- Write a program in Jupiter Notebook(python) to take 2 inputs from an ip based camera and motion sensor. 1. An image from the camera when a motion sensor senses that a car has entered the parking lot ,2. date and time when the picture is taken. -->

## Software 04 Inputs from IP based camera and motion sensor

Certainly! Below is a program example in a Jupyter Notebook that simulates taking inputs from an IP-based camera and motion sensor, capturing an image when motion is detected, and recording the date and time:

```python
from datetime import datetime
import cv2
import ipywidgets as widgets
from IPython.display import display, clear_output

# Simulate input from the camera and motion sensor
def simulate_camera_capture():
    # In a real scenario, you would capture an image from the camera and detect motion.
    # For the purpose of this example, we'll use a sample image and assume motion is detected.
    image = cv2.imread("sample_car_image.jpg")  # Replace with actual image path
    motion_detected = True
    return image, motion_detected

# Function to display image and information
def display_image(image, date_time):
    plt.figure(figsize=(8, 6))
    plt.imshow(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
    plt.title(f"Image taken on {date_time}")
    plt.axis('off')
    plt.show()

# Simulate motion sensor input
def motion_detected_simulator(change):
    if change['new']:
        image, date_time = simulate_camera_capture()
        display_image(image, date_time)

# Create a motion sensor simulation widget
motion_simulator = widgets.Checkbox(value=False, description="Motion Detected")
motion_simulator.observe(motion_detected_simulator, 'value')

# Display the motion sensor simulator widget
display(motion_simulator)
```

In this example, the `simulate_camera_capture` function simulates capturing an image from the camera and detecting motion. The `display_image` function displays the captured image along with the date and time. The `motion_detected_simulator` function is used to trigger the simulation when the motion sensor checkbox is checked.

Please note that this example uses the `ipywidgets` library for interactive elements in the Jupyter Notebook. You can install it using `pip install ipywidgets`. Additionally, make sure to replace `"sample_car_image.jpg"` with the actual path of the image captured by your IP-based camera.

Remember that this is a simplified simulation for demonstration purposes, and in a real scenario, you would need to integrate with actual camera APIs and motion detection systems.
