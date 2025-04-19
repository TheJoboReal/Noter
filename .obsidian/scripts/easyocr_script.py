import sys
import easyocr
from PIL import Image

# Initialize EasyOCR reader
reader = easyocr.Reader(['en'])  # You can add more languages like ['en', 'fr', 'de']

# Open the image file
image_path = sys.argv[1]
image = Image.open(image_path)

# Run OCR with EasyOCR
result = reader.readtext(image_path)

# Print OCR result for debugging
ocr_text = "\n".join([text[1] for text in result])

# Show OCR output for debugging
print("OCR Text:\n", ocr_text)

# Now send the OCR text to Ollama, or process as needed

