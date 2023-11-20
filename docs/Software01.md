<!-- Write a program in Jupiter Notebook(python) to take input a string which is a number plate and creates a hash which is then converted into qr code  -->

## Software 01 which contains the process of creating a hash and convertion it to QR Code.

Here's a step-by-step guide on how to create a Jupyter Notebook program that takes a number plate as input, creates a hash, and converts it into a QR code:

1. Install required libraries:
   Before you begin, make sure you have the required libraries installed. You can install them using the following commands:

   ```bash
   pip install hashlib qrcode
   ```

2. Import necessary modules:
   In your Jupyter Notebook cell, import the required modules:

```python
import hashlib
import qrcode
```

3. Take input from the user:
   Prompt the user to enter a number plate and store it in a variable:

```python
number_plate = input("Enter the number plate: ")
```

4. Create a hash:
   Calculate the hash of the input number plate using a hash function (e.g., SHA-256):

```python
hash_object = hashlib.sha256(number_plate.encode())
hash_value = hash_object.hexdigest()
```

5. Generate a QR code:
   Create a QR code containing the hash value using the `qrcode` library:

```python
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(hash_value)
qr.make(fit=True)

qr_code = qr.make_image(fill_color="black", back_color="white")
```

6. Display the QR code:
   Display the generated QR code in the notebook:

```python
display(qr_code)
```

Putting it all together, here's the complete code snippet:

```python
import hashlib
import qrcode
from IPython.display import display

number_plate = input("Enter the number plate: ")

hash_object = hashlib.sha256(number_plate.encode())
hash_value = hash_object.hexdigest()

qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(hash_value)
qr.make(fit=True)

qr_code = qr.make_image(fill_color="black", back_color="white")
display(qr_code)
```

Just copy and paste this code into a Jupyter Notebook cell, run it, and you'll be prompted to enter a number plate. After entering the number plate, a QR code containing the hash of the number plate will be displayed.
