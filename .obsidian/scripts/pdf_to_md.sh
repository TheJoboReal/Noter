#!/bin/bash

# Input and output folders
INPUT_FOLDER="../../handwritten-notes"
OUTPUT_FOLDER="../../written_markdown"

# Temporary folder for intermediate images
TEMP_FOLDER="./temp_images"
mkdir -p "$TEMP_FOLDER"

# Find the latest file (even inside subfolders)
LATEST_FILE=$(find "$INPUT_FOLDER" -type f -printf "%T@ %p\n" | sort -n | tail -1 | cut -d' ' -f2-)

# Check if file found
if [ ! -f "$LATEST_FILE" ]; then
  echo "No files found in $INPUT_FOLDER."
  exit 1
fi

echo "Processing file: $LATEST_FILE"

# Convert PDF to images
EXT="${LATEST_FILE##*.}"
if [[ "$EXT" == "pdf" ]]; then
  pdftoppm -png "$LATEST_FILE" "$TEMP_FOLDER/page"
else
  cp "$LATEST_FILE" "$TEMP_FOLDER/page-1.png"
fi

# Process the image with the TrOCR Python script
for IMG in "$TEMP_FOLDER"/*.png; do
  echo "Running OCR (TrOCR) on $IMG"
  
  # Run the Python script to extract text using TrOCR
  python3 trocr_script.py "$IMG"

  # Once OCR is done, we can capture the markdown output from Python script (if any)

  # Example: You can directly move or rename the output markdown file
  mv output.md "$OUTPUT_FOLDER/$(basename "$IMG" .png).md"
done

# Clean temporary images
rm -rf "$TEMP_FOLDER"

echo "OCR and Markdown conversion completed. Files are saved in $OUTPUT_FOLDER"

