<!-- Write a program in Jupiter Notebook(python) to take input a string which is a number plate, a date and time, and a 10 digit hexadecimal number which is the parking place Id  and creates a hash which is then converted into qr code  -->

## Software 01A "upgraded version of Software 01"

Sure, here's an example Jupyter Notebook code that takes input for a number plate, date and time, and a hexadecimal parking place ID, creates a hash from the input, and generates a QR code from the hash using the `qrcode` library:

```python
import hashlib
import qrcode
from datetime import datetime

# Function to create a hash from input data
def create_hash(number_plate, date_time, parking_id):
    input_data = f"{number_plate}{date_time}{parking_id}"
    hash_object = hashlib.sha256(input_data.encode())
    return hash_object.hexdigest()

# Input data
number_plate = input("Enter the number plate: ")
date_time = input("Enter the date and time (YYYY-MM-DD HH:MM:SS): ")
parking_id = input("Enter the 10-digit hexadecimal parking place ID: ")

# Create a hash from the input data
hash_value = create_hash(number_plate, date_time, parking_id)

# Generate a QR code from the hash
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(hash_value)
qr.make(fit=True)

# Create an image from the QR code
qr_image = qr.make_image(fill_color="black", back_color="white")

# Display the QR code
display(qr_image)
```

Make sure you have the `qrcode` library installed. If not, you can install it using the following command:

```bash
pip install qrcode[pil]
```

This code prompts the user for input, creates a hash from the input data, and then generates a QR code containing the hash. The QR code is displayed in the Jupyter Notebook output cell.
