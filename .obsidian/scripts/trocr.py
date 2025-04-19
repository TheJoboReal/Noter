import sys
from transformers import TrOCRProcessor, VisionEncoderDecoderModel
from PIL import Image

# Load model and processor
processor = TrOCRProcessor.from_pretrained('microsoft/trocr-base-handwritten', use_fast=True)
model = VisionEncoderDecoderModel.from_pretrained('microsoft/trocr-base-handwritten')

# Read image filename from command-line arguments
image_path = sys.argv[1]
image = Image.open(sys.argv[1]).convert("RGB")

# OCR
pixel_values = processor(images=image, return_tensors="pt").pixel_values
generated_ids = model.generate(pixel_values)
text = processor.batch_decode(generated_ids, skip_special_tokens=True)[0]

# Output
print(text)

