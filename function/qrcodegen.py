import random
import hashlib
import qrcode

# Generate a 6-digit random number
random_number = str(random.randint(100000, 999999))

# Assume 876th booking for the user
booking_count = "876"

# User ID
user_id = "u16901622017"

# Parking location ID
parking_location_id = "parkkol0001"

# Entry and exit times in HHMMSS format
entry_time = "f900000"
exit_time = "t200000"

# Car number plate
car_number_plate = "wb12345678"

# Concatenate all the components
output_string = f"{random_number}{booking_count}{user_id}{parking_location_id}{entry_time}{exit_time}{car_number_plate}"

# Hash the output using SHA-256
hashed_output = hashlib.sha256(output_string.encode()).hexdigest()

# Create a QR code
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(hashed_output)
qr.make(fit=True)

# Create an image of the QR code
qr_img = qr.make_image(fill_color="black", back_color="white")

# Save the QR code image
qr_img.save("output_qr_code.png")

# Display the QR code
qr_img.show()
