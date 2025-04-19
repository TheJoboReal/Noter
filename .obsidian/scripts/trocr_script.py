import pytesseract
from PIL import Image

# Load the image
image_path = sys.argv[1]
image = Image.open(image_path)

# Extract text using Tesseract
text = pytesseract.image_to_string(image)

# Print the result
print("Extracted Text:")
print(text)

