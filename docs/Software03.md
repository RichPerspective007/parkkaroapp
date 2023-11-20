<!-- Write a program in Jupiter Notebook(python) to take a picture as an input and return the text written inside the car number plate  -->

## Software 03 Car Number Plate Detector

To extract text from an image of a car number plate, you can use Optical Character Recognition (OCR) technology. The `pytesseract` library can be used in Python for OCR. Here's how you can create a Jupyter Notebook program to achieve this:

1. Install the required libraries:
   Install the `pytesseract` library using the following command:

   ```bash
   pip install pytesseract
   ```

2. Import necessary modules:
   In your Jupyter Notebook cell, import the required modules:

```python
import cv2
import pytesseract
from PIL import Image
```

3. Load and preprocess the image:

```python
# Load the image
image_path = "path_to_your_image.jpg"  # Replace with the actual image path
image = cv2.imread(image_path)

# Convert to grayscale
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
```

4. Perform OCR to extract text:

```python
# Use pytesseract to perform OCR on the grayscale image
text = pytesseract.image_to_string(gray_image)
```

5. Display the extracted text:

```python
print("Extracted text from the image:")
print(text)
```

Putting it all together, here's the complete code snippet:

```python
import cv2
import pytesseract
from PIL import Image

# Load the image
image_path = "path_to_your_image.jpg"  # Replace with the actual image path
image = cv2.imread(image_path)

# Convert to grayscale
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Use pytesseract to perform OCR on the grayscale image
text = pytesseract.image_to_string(gray_image)

# Display the extracted text
print("Extracted text from the image:")
print(text)
```

Just copy and paste this code into a Jupyter Notebook cell, replace `"path_to_your_image.jpg"` with the actual path to your image file, and run the cell. The extracted text from the car number plate in the image will be displayed. Keep in mind that OCR accuracy can vary depending on the quality of the image, the font used, and other factors.
