<!-- Write a program in Jupiter Notebook(python) to take 2 inputs from an ip based camera and motion sensor. 1. An image from the camera when a motion sensor senses that a car has entered the parking lot ,2. date and time when the picture is taken. then from the picture find out the car id from the number plate, and check the car ID with the registered car Id and return true or false, if true then start countdown if false then send an Alert  -->

## Software 04 Upgraded version of Software 04

Sure, here's an example program you can use in a Jupyter Notebook to achieve the described functionality. This example uses the OpenALPR library for license plate recognition and assumes that you have the necessary libraries installed in your environment.

```python
import cv2
import time
import openalpr

# Initialize the ALPR library
alpr = openalpr.Alpr("us", "/etc/openalpr/openalpr.conf", "/usr/share/openalpr/runtime_data")

# Simulate input from the camera and motion sensor
def simulate_camera_capture():
    # In a real scenario, you would capture an image from the camera and detect motion.
    # For the purpose of this example, we'll use a sample image and assume motion is detected.
    image = cv2.imread("sample_car_image.jpg")
    motion_detected = True
    return image, motion_detected

# Function to recognize the license plate
def recognize_license_plate(image):
    results = alpr.recognize_ndarray(image)
    if results['results']:
        plate = results['results'][0]['plate']
        return plate
    return None

# Simulate checking against registered car IDs
def is_registered_car(plate):
    # Replace with your logic to check if the car with this plate is registered
    registered_cars = ["ABC123", "XYZ789"]  # Example list of registered car plates
    return plate in registered_cars

# Simulate sending an alert
def send_alert():
    print("ALERT: Unregistered car detected!")

# Simulate starting countdown
def start_countdown():
    for remaining in range(10, 0, -1):
        print(f"Countdown: {remaining} seconds")
        time.sleep(1)
    print("Countdown complete")

# Main function
def main():
    image, motion_detected = simulate_camera_capture()

    if motion_detected:
        plate = recognize_license_plate(image)

        if plate:
            registered = is_registered_car(plate)
            if registered:
                start_countdown()
            else:
                send_alert()
        else:
            print("No license plate detected in the image")

# Run the main function
if __name__ == "__main__":
    main()

# Cleanup the ALPR resources
alpr.unload()
```

Please note that this is a simplified example and you'll need to adapt it to your specific hardware and setup. Additionally, you'll need to install the required libraries (`opencv-python`, `pyopenalpr`) and have the necessary configuration files and models for OpenALPR. The image used in the example should be replaced with the actual images captured by your IP camera.
