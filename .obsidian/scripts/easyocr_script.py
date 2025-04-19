import sys
import easyocr
from PIL import Image, ImageEnhance
import cv2
import numpy as np
from spellchecker import SpellChecker

# Initialize EasyOCR reader
reader = easyocr.Reader(['en'])

# Initialize the spell checker
spell = SpellChecker()

# Function to clean up OCR text
def clean_ocr_text(text):
    words = text.split()
    corrected_words = [spell.correction(word) for word in words]
    return ' '.join(corrected_words)

# Open image file
image_path = sys.argv[1]
image = Image.open(image_path)

# Convert image to grayscale for better OCR accuracy
gray_image = cv2.cvtColor(np.array(image), cv2.COLOR_RGB2GRAY)

# Enhance contrast
enhancer = ImageEnhance.Contrast(image)
image = enhancer.enhance(2)

# Apply Gaussian blur (denoising)
denoised_image = cv2.GaussianBlur(gray_image, (5, 5), 0)

# Thresholding to make text clearer (binary image)
_, thresh_image = cv2.threshold(denoised_image, 150, 255, cv2.THRESH_BINARY)

# Convert back to PIL image for EasyOCR
final_image = Image.fromarray(thresh_image)

# Save or show the processed image (for debugging)
final_image.save("processed_image.png")

# Run OCR with EasyOCR on the processed image
result = reader.readtext(final_image)

# Extract text from the OCR result
ocr_text = "\n".join([text[1] for text in result])

# Clean the OCR text using spell checker
cleaned_text = clean_ocr_text(ocr_text)

# Print OCR and cleaned OCR text for debugging
print("Original OCR Text:\n", ocr_text)
print("\nCleaned OCR Text:\n", cleaned_text)

# You can now send this cleaned_text to your Ollama processing or continue with further steps...

