from transformers import TrOCRProcessor, VisionEncoderDecoderModel
from PIL import Image

# Load the TrOCR processor and model
processor = TrOCRProcessor.from_pretrained("microsoft/trocr-base-handwritten")
model = VisionEncoderDecoderModel.from_pretrained("microsoft/trocr-base-handwritten")

# Load the image (ensure the image path is correct)
image_path = 'image.png'  # Replace with your image path
image = Image.open(image_path)

# Preprocess the image and run OCR with TrOCR
inputs = processor(images=image, return_tensors="pt")
output = model.generate(**inputs)

# Decode the output and print the result
text = processor.decode(output[0], skip_special_tokens=True)

# Output the extracted text
print("Extracted Text:")
print(text)

# Optionally, clean the text (e.g., remove unwanted characters or format as needed)
cleaned_text = text.strip()

# Save the cleaned text to a file (Markdown format)
with open("output.md", "w") as md_file:
    md_file.write("# Extracted Text from Image\n\n")
    md_file.write(cleaned_text)

print("\nCleaned text has been saved to output.md")

